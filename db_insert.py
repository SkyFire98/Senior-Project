import shodan
import pymysql

SHODAN_API_KEY = "Insert API Key"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=150)     # Make API call.

# Open database connection
db = pymysql.connect("localhost", "user", "password", "database", autocommit=True)
# prepare a cursor object using cursor() method
cursor = db.cursor()



for result in results['matches']:
    try:
        # print("ip_str: " + str(result['ip_str']))
        ip_str = result['ip_str']
    except:
        # print("ip_str: NULL")
        ip_str = None 

    try:
        # print("port: " + str(result['port']))
        port = result['port']
    except:
        # print("port: NULL")
        port = None

    try:
        # print("transport: " + str(result['transport']))
        transport = result['transport']
    except:
        # print("transport: NULL")
        transport = None

    try:
        # print("product: " + str(result['product']))
        product = result['product']
    except:
        # print("product: NULL")
        product = None

    try:
        # print("version: " + str(result['version']))
        version = result['version']
    except:
        # print("version: NULL")
        version = None

    try:
        # print("server: " + str(result['http']['server']))
        server = result['http']['server']
    except:
        # print("server: NULL")
        server = None

    try:
        vuln_count = 0
        for cve in result['vulns']:
            if (vuln_count == 3):
                break
            # print("\n" + cve)
            # print("\t" + str(result['vulns'][cve]['summary']))
            vuln_count = vuln_count + 1
        vuls = vuln_count
    except:
        # print("vulns: NULL")
        vulns = None

    '''print(port)
    print(transport)
    print(product)
    print(version)
    print(server)
    print(vulns)'''
    # execute SQL query using execute() method.
    cursor.execute("Insert into vul values('%s', '%s', '%s', '%s', '%s', '%s', '%s')"% (ip_str, port, transport, product, version, server, vulns))
    db.commit()

    # Fetch a single row using fetchone() method.
    data = cursor.fetchone()
    print(data)

    # disconnect from server
db.close()