import pymysql

# Open database connection
db = pymysql.connect("localhost", "root", "limegreen715", "sys",
autocommit=True)
# prepare a cursor object using cursor() method
cursor = db.cursor()

cursor.execute("INSERT into historic_data(date, asset_total, vuln_total, port1, port2, port3, cve1,  cve2, cve3, host1, host2, host3) values (CURDATE(), (SELECT COUNT(*) FROM asset_info), (SELECT COUNT(entry_id) from asset_info where entry_id in (SELECT entry_id from cve_info)), (select port from asset_info group by port order by count(port) desc limit 0,1),(select port from asset_info group by port order by count(port) desc limit 1,1),(select port from asset_info group by port order by count(port) desc limit 2,1),(select cve from cve_info group by cve order by count(cve) desc limit 0,1),(select cve from cve_info group by cve order by count(cve) desc limit 1,1),(select cve from cve_info group by cve order by count(cve) desc limit 2,1),(select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 0,1)),(select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1,1)), (select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 2,1)));")


# disconnect from server
db.close()