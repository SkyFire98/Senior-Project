import pymysql

def str_rep (string):
    return string.replace("(", "").replace(")", "").replace(",", "").replace("\'", "")


# Open database connection
db = pymysql.connect("localhost", "user", "password", "db",
autocommit=True)
# prepare a cursor object using cursor() method
cursor = db.cursor()


cursor.execute("SELECT COUNT(*) FROM asset_info;")
total_hosts = str_rep(str(cursor.fetchall()))
cursor.execute("SELECT COUNT(entry_id) from asset_info where entry_id in (SELECT entry_id from cve_info);")
total_vuln_hosts = str_rep(str(cursor.fetchall()))
cursor.execute("select port from asset_info group by port order by count(port) desc limit 0,1;")
port1 = str_rep(str(cursor.fetchall()))
cursor.execute("select port from asset_info group by port order by count(port) desc limit 1,1;")
port2 = str_rep(str(cursor.fetchall()))
cursor.execute("select port from asset_info group by port order by count(port) desc limit 2,1;")
port3 = str_rep(str(cursor.fetchall()))
cursor.execute("select cve from cve_info group by cve order by count(cve) desc limit 0,1;")
cve1 = str_rep(str(cursor.fetchall()))
cursor.execute("select cve from cve_info group by cve order by count(cve) desc limit 1,1;")
cve2 = str_rep(str(cursor.fetchall()))
cursor.execute("select cve from cve_info group by cve order by count(cve) desc limit 2,1;")
cve3 = str_rep(str(cursor.fetchall()))
cursor.execute("select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 0,1);")
host1 = str_rep(str(cursor.fetchall()))
cursor.execute("select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1,1);")
host2 = str_rep(str(cursor.fetchall()))
cursor.execute("select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 2,1);")
host3 = str_rep(str(cursor.fetchall()))

cursor.execute("INSERT into historic_data(date, asset_total, vuln_total, port1, port2, port3, cve1,  cve2, cve3, host1, host2, host3) values (CURDATE(), '%d', '%d', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')"% (int(total_hosts), int(total_vuln_hosts), port1, port2, port3, cve1, cve2, cve3, host1, host2, host3)) 

# disconnect from server
db.close()
