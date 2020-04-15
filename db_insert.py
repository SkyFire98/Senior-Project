import shodan
import pymysql

SHODAN_API_KEY = "UUFuyEaMCkYneMqmlNTImLNl5CwLdpGl"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=199)     # Make API call.

# Open database connection
db = pymysql.connect("localhost", "root", "limegreen715", "sys", autocommit=True)
# prepare a cursor object using cursor() method
cursor = db.cursor()
cursor.execute("truncate cve_info")
cursor.execute("SET FOREIGN_KEY_CHECKS = 0")
cursor.execute("TRUNCATE asset_info")
cursor.execute("SET FOREIGN_KEY_CHECKS = 1")



for result in results['matches']:
    try:
        ip_str = result['ip_str']
    except:
        ip_str = None 

    try:
        port = result['port']
    except:
        port = None

    try:
        transport = result['transport']
    except:
        transport = None

    try:
        product = result['product']
    except:
        product = None

    try:
        version = result['version']
    except:
        version = None

    try:
        server = result['http']['server']
    except:
        server = None

    

    #FILL asset_info TABLE
    cursor.execute("Insert into asset_info(ip_str, port, transport, product, version, server) values('%s', %d, '%s', '%s', '%s', '%s')"% (ip_str, int(port), transport, product, version, server))
    db.commit()	
    entry_id=cursor.lastrowid


    #FILL cve_info TABLE and cve_references
    try:
        
        for cve in result['vulns']:

            sum = result['vulns'][cve]['summary']

            cursor.execute("Insert into cve_info(entry_id, cve, summary) values(%d, '%s', '%s')"% (entry_id, cve, sum))
            db.commit()	
            cve_id=cursor.lastrowid

                
    except:
        continue
        
    

# disconnect from server
db.close()