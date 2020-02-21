import shodan

SHODAN_API_KEY = "insert api key"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=15)     # Make API call.

keys = ["ip_str", "port", "transport", "product", "version"]    # List of keys to parse.

for result in results['matches']:
    for key in keys:
        try:
            print(key + ": " + str(result[key]))
        except:
            print(key + ": " + "NULL")
    try:
        print("server: " + str(result['http']['server']))
    except:
        print("server: NULL")
    try:
        vuln_count = 0
        for cve in result['vulns']:
            if (vuln_count == 3):
                break
            print("\n" + cve)
            print("\t" + str(result['vulns'][cve]['summary']))
            print("Reference 1: " + str(result['vulns'][cve]['references'][0]))
            print("Reference 2: " + str(result['vulns'][cve]['references'][1]))
            print("Reference 3: " + str(result['vulns'][cve]['references'][2]))
            vuln_count = vuln_count + 1
    except:
        print("vulns: NULL")
    print('\n')
