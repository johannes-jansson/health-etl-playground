import psycopg2  # psycho-postgrep-2


class Extract:

    def __init__(self):
        # database part
        self.con = psycopg2.connect(
            host="localhost",
            database="source"
        )
        self.cur = self.con.cursor()

    def close(self, commit=False):
        # database part
        if (commit):
            self.con.commit()
        self.cur.close()
        self.con.close()

    def extract(self):
        # database part
        self.cur.execute("select person.email, person.country_of_birth, person.date_of_birth, car.price "
                         "from person left join car on person.car_id=car.id;")
        rows = self.cur.fetchall()
        return rows

    def print(self, rows):
        for r in rows:
            print(
                "email: {}, country: {}, birthdate: {}, carprice: {}"
                .format(r[0], r[1], r[2], r[3])
            )


class Load:

    def __init__(self):
        self.con = psycopg2.connect(
            host="localhost",
            database="target"
        )
        self.cur = self.con.cursor()

    def close(self, commit=False):
        if (commit):
            self.con.commit()
        self.cur.close()
        self.con.close()


def create():
    con = psycopg2.connect(host="localhost", database="postgres")
    con.autocommit = True  # Can't drop database otherwise
    cur = con.cursor()
    try:
        cur.execute("drop database source;")
    except psycopg2.errors.InvalidCatalogName:
        print("source database didn't exist, which is fine")
    cur.execute("create database source;")
    cur.close()
    con.close()

    con = psycopg2.connect(host="localhost", database="source")
    cur = con.cursor()
    # add sleep data
    sqlfile = open('./sql/sleep.sql', 'r')
    cur.execute(sqlfile.read())

    # add mood data
    sqlfile = open('./sql/mood.sql', 'r')
    cur.execute(sqlfile.read())

    # add strava data
    sqlfile = open('./sql/strava.sql', 'r')
    cur.execute(sqlfile.read())

    con.commit()
    cur.close()
    con.close()


# cur.execute("insert into person () values ()");
# some inspo from here: https://medium.com/datadriveninvestor/complete-data-analytics-solution-using-etl-pipeline-in-python-edd6580de24b
if __name__ == '__main__':
    create()
    # extracter = Extract()
    # rows = extracter.extract()
    # extracter.print(rows)
    # extracter.close(False)
