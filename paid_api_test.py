import shodan

SHODAN_API_KEY = "insert API key"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=5)     # Make API call.

keys = ["ip_str", "org", "isp", "port", "transport", "os", "product", "version", "domains", "hostnames"]

for result in results['matches']:
    for key in keys:
        try:
            print(key + ": " + str(result[key]))
        except:
            print(key + ": " + "NULL")
    try:
        print("city: " + str(result['location']['city']))
        print("country: " + str(result['location']['country_name']))
    except:
        print("location: NULL")
    try:
        print("server: " + str(result['http']['server']))
    except:
        print("server: NULL")
    try:
        vuln_count = 0
        for cve in result['vulns']:
            if (vuln_count == 3):
                break
            print(cve, end='\t')
            vuln_count = vuln_count + 1
    except:
        print("vulns: NULL")
    print('\n')

'''
file = open("data.txt", "w")
file.write(str(results))
file.close()
'''
