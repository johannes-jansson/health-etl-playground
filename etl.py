import psycopg2  # psycho-postgrep-2
import pandas as pd


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
        # database part
        self.curs.execute("select * "
                          "from strava "
                          # "full outer join sleep on strava.date = sleep.date "
                          "join sleep on strava.date = sleep.date "
                          "join mood on strava.date = mood.date "
                          ";")
        rows = self.curs.fetchall()
        colnames = [desc[0] for desc in self.curs.description]
        return rows, colnames

    def print(self, rows):
        for row in rows:
            for field in row:
                print(field)
            print("")
            # print(
            #     "email: {}, country: {}, birthdate: {}, carprice: {}"
            #     .format(r[0], r[1], r[2], r[3])
            # )


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


def create():
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


# some inspo from here: https://medium.com/datadriveninvestor/complete-data-analytics-solution-using-etl-pipeline-in-python-edd6580de24b
if __name__ == '__main__':
    # create()
    # extracter = Extract()
    # rows, colnames = extracter.get_DB_data()
    # extracter.print(rows)
    # print(colnames)
    # extracter.close(False)
    print("done")
