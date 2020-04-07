import shodan
import pymysql

SHODAN_API_KEY = "UUFuyEaMCkYneMqmlNTImLNl5CwLdpGl"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=100)     # Make API call.

# Open database connection
db = pymysql.connect("localhost", "root", "limegreen715", "sys", autocommit=True)
# prepare a cursor object using cursor() method
cursor = db.cursor()



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
    
    '''print("ASSET_INFO: ")
    print(ip_str)
    print(port)
    print(transport)
    print(product)
    print(version)
    print(server)
    print("\n")'''

    

    #FILL asset_info TABLE
    cursor.execute("Insert into asset_info(ip_str, port, transport, product, version, server) values('%s', %d, '%s', '%s', '%s', '%s')"% (ip_str, int(port), transport, product, version, server))
    db.commit()	
    entry_id=cursor.lastrowid


    count = 0
    #FILL cve_info TABLE and cve_references
    try:
        for cve in result['vulns']:
            count = count + 1
            sum = result['vulns'][cve]['summary']

            cursor.execute("Insert into cve_info(entry_id, cve, summary) values(%d, '%s', '%s')"% (entry_id, cve, sum))
            db.commit()	
            cve_id=cursor.lastrowid
            # print(cve_id)
            count2 = 0
            for reference in result['vulns'][cve]['references']:
                count2 = count2 + 1
                cursor.execute("Insert into cve_references(cve_id, reference) values(%d, '%s')"% (cve_id, reference))
                db.commit()	

            if(count2 > 0):
                print("CVE ID: ", cve_id)
                print("Reference count: ", count2)
                print("\n")

        print("Entry ID: ", entry_id)
        print("CVE count: ", count)
        print("\n")
                
    except:
        continue

    

# disconnect from server
db.close()