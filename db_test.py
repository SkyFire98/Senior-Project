import pymysql

con = pymysql.connect('localhost', 'root', 'insert password', 'test')

with con:

    cur = con.cursor()
    cur.execute("SELECT VERSION()")

    version = cur.fetchone()

    print("Database version: {}".format(version[0]))