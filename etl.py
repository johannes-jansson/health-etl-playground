import psycopg2  # psycho-postgrep-2
import pandas as pd
import pandas.io.sql as sqlio
import numpy as np
from datetime import datetime


class Extract:
    def __init__(self):
        # database part
        self.con = psycopg2.connect(
            host="localhost",
            database="source"
        )
        self.curs = self.con.cursor()

    def close(self, commit=False):
        # database part
        if (commit):
            self.con.commit()
        self.curs.close()
        self.con.close()

    def get_DB_data(self):
        # get all days with mood, and add sleep and strava data if available
        query = ("select * "
                 "from mood "
                 # "full outer join sleep on strava.date = sleep.date "
                 "left join sleep on mood.date = sleep.date "
                 "left join strava on mood.date = strava.date "
                 ";")
        data = sqlio.read_sql_query(query, self.con)
        return data


class Load:
    def __init__(self):
        self.con = psycopg2.connect(
            host="localhost",
            database="target"
        )
        self.curs = self.con.cursor()

    def put_DB_data(self, data, table):
        print("putting")
        if isinstance(data, pd.DataFrame):
            try:
                print("inserting dataframe")
            except Exception as e:
                print("Something went wrong:")
                print(e)
        else:
            try:
                print("inserting dict")
            except Exception as e:
                print("Something went wrong:")
                print(e)

    def close(self, commit=False):
        if (commit):
            self.con.commit()
        self.curs.close()
        self.con.close()


class Transform:
    def __init__(self):
        self.loader = Load()
        extracter = Extract()
        self.data = extracter.get_DB_data()
        extracter.close()
        self.transform()
        self.loader.close()

    def transform(self):
        # remove unnecessary id fields, dates are our new id's
        self.data = self.data.drop(["id"], axis=1)
        # remove unnexessary date fields, keep one
        self.data = self.data.loc[:, ~self.data.columns.duplicated()]
        # change all None's to NaN's
        self.data.fillna(value=pd.np.nan, inplace=True)

        # we decided not to care about strava except for duration
        self.data = self.data.drop(["activity_type", "distance_km", "start_time"], axis=1)

        # calculate sleep duration
        self.data['fell_asleep'] = pd.to_datetime(self.data['fell_asleep'])
        self.data['woke_up'] = pd.to_datetime(self.data['woke_up'])
        self.data["sleep_minutes"] = self.data[["fell_asleep", "woke_up"]].apply(lambda x: (x[1] - x[0]).seconds / 60 if x[1] > x[0] else (x[0] - x[1]).seconds / 60, axis=1)
        self.data = self.data.drop(["fell_asleep", "woke_up"], axis=1)

        # rename exercide duration
        self.data.rename(columns={"duration_minutes": "exercise_minutes"})

        print(self.data)
        # self.loader.put_DB_data(self.data, 'default');


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
    sqlfile = open('./sql/sleep.sql', 'r')
    curs.execute(sqlfile.read())

    # add mood data
    sqlfile = open('./sql/mood.sql', 'r')
    curs.execute(sqlfile.read())

    # add strava data
    sqlfile = open('./sql/strava.sql', 'r')
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
    # add sleep data
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


# some inspo from here: https://medium.com/datadriveninvestor/complete-data-analytics-solution-using-etl-pipeline-in-python-edd6580de24b
if __name__ == '__main__':
    # create_source()
    # create_target()
    clear_target()

    # extracter = Extract()
    # data = extracter.get_DB_data()
    # print(data)
    # extracter.close(False)

    Transform()
    print("done")
