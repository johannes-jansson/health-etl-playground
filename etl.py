from datetime import datetime
import json
import numpy as np
import pandas as pd
import pandas.io.sql as sqlio
import psycopg2  # psycho-postgrep-2
from sqlalchemy import create_engine
import sys


class Extract:
    def __init__(self, config):
        self.dbs = []
        self.csvs = []
        for source in config:
            if source["type"] == "postgresql":
                self.dbs.append(source)
            if source["type"] == "csv":
                self.csvs.append(source)

    def get_db_data(self):
        data = []
        for source in self.dbs:
            con = psycopg2.connect(
                host=source["host"],
                database=source["database"])
            query = "".join(source["query"])
            data.append(sqlio.read_sql_query(query, con))
            con.close()
        return data

    def get_csv_data(self):
        data = []
        for source in self.csvs:
            data.append(pd.read_csv(source["file"]))
        return data


class Load:
    def __init__(self, config):
        # create sqlalchemy engine so that we can use pandas to insert
        self.config = config
        self.engine = create_engine("{}://{}@{}:{}/{}".format(
            self.config["type"],
            self.config["username"],
            self.config["host"],
            self.config["port"],
            self.config["database"]))

    def put_DB_data(self, data):
        try:
            data.to_sql(
                self.config["table"],
                self.engine,
                if_exists='replace',
                index=False)
        except Exception as e:
            print("Something went wrong:")
            print(e)


class Transform:
    def __init__(self, configfile="config.json"):
        config = json.load(open(configfile, "r"))
        self.loader = Load(config["target"])
        extracter = Extract(config["sources"])
        self.db_data = extracter.get_db_data()
        self.csv_data = extracter.get_csv_data()
        self.transform()

    def transform(self):
        # give the two sources simpler names. 
        d = self.db_data[0]
        c = self.csv_data[0]

        # sleep contains duplicate dates for test data since it's mocked, just
        # remove them for now
        # TODO: make sure mocked data has unique dates
        c = c.drop_duplicates(subset=['date'])

        # db data has duplicate fields from the sql join, remove these
        d = d.loc[:, ~d.columns.duplicated()]

        # old id's from sleep are unneccessary and causes problems, delete them
        c = c.drop(["id"], axis=1)

        # make sure the date field is a pandas date
        # c.loc[":", "date"] = pd.to_datetime(c['date'])
        c['date'] = pd.to_datetime(c['date'])
        d['date'] = pd.to_datetime(d['date'])
        
        print(c)
        print(d)

        # join the two data sources
        d = pd.merge(d, c, on='date', how='left')

        # remove unnecessary id fields, dates are our new id's
        d = d.drop(["id"], axis=1)

        # remove unnexessary date fields, keep one
        d = d.loc[:, ~d.columns.duplicated()]

        # change all None's to NaN's
        d.fillna(value=pd.np.nan, inplace=True)

        # the only strava data we're interested in is duration
        d = d.drop(["activity_type", "distance_km", "start_time"], axis=1)
        d = d.rename(columns={"duration_minutes": "exercise_minutes"})

        # calculate sleep duration, drop original cols
        d['fell_asleep'] = pd.to_datetime(d['fell_asleep'], format="'%H:%M:%S'")
        d['woke_up'] = pd.to_datetime(d['woke_up'], format="'%H:%M:%S'")
        d["sleep_minutes"] = d[["fell_asleep", "woke_up"]].apply(lambda x: (x[1] - x[0]).seconds / 60 if x[1] > x[0] else (x[0] - x[1]).seconds / 60, axis=1)
        d = d.drop(["fell_asleep", "woke_up"], axis=1)

        # load it!
        print(d)
        self.loader.put_DB_data(d)


def create_source():
    con = psycopg2.connect(host="localhost", database="postgres")
    con.autocommit = True  # Can't drop database otherwise
    curs = con.cursor()
    try:
        curs.execute("drop database source;")
    except psycopg2.errors.InvalidCatalogName:
        print("source database didn't exist, which is fine")
    curs.execute("create database source;")
    curs.close()
    con.close()

    con = psycopg2.connect(host="localhost", database="source")
    curs = con.cursor()
    # add sleep data
    sqlfile = open('./data/sleep.sql', 'r')
    curs.execute(sqlfile.read())

    # add mood data
    sqlfile = open('./data/mood.sql', 'r')
    curs.execute(sqlfile.read())

    # add strava data
    sqlfile = open('./data/strava.sql', 'r')
    curs.execute(sqlfile.read())

    con.commit()
    curs.close()
    con.close()


def create_target():
    con = psycopg2.connect(host="localhost", database="postgres")
    con.autocommit = True  # Can't drop database otherwise
    curs = con.cursor()
    try:
        curs.execute("drop database target;")
    except psycopg2.errors.InvalidCatalogName:
        print("target database didn't exist, which is fine")
    curs.execute("create database target;")
    curs.close()
    con.close()

    con = psycopg2.connect(host="localhost", database="target")
    curs = con.cursor()
    sql = ("create table health ("
           "id bigserial primary key not null, "
           "date date unique not null, "
           "mood int not null, "
           "netflix boolean not null, "
           "sport boolean not null, "
           "reading boolean not null, "
           "outdoors boolean not null, "
           "sleep_quality DECIMAL(4,2) not null, "
           "exercise_minutes DECIMAL(8,2) not null, "
           "sleep_minutes DECIMAL(8,2) not null "
           ");")
    curs.execute(sql)

    con.commit()
    curs.close()
    con.close()


def clear_target():
    con = psycopg2.connect(host="localhost", database="target")
    curs = con.cursor()
    # add sleep data
    sql = "truncate health"
    curs.execute(sql)
    con.commit()
    curs.close()
    con.close()


if __name__ == '__main__':
    # create_source()
    # create_target()
    clear_target()

    # extracter = Extract()
    # data = extracter.get_db_data()
    # print(data)
    # extracter.close(False)

    if (len(sys.argv) > 1):
        Transform(sys.argv[1])
    else:
        Transform()
    print("done")
