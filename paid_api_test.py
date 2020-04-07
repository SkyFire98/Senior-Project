import shodan

SHODAN_API_KEY = "UUFuyEaMCkYneMqmlNTImLNl5CwLdpGl"     # Shodan.io API key for auth.
query = "net:129.59.0.0/16"    # The service to query for.
api = shodan.Shodan(SHODAN_API_KEY)     # Create API object.
results = api.search(query, limit=15)     # Make API call.
# results = api.host(query, limit=5)


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
        '''if(len(results['vulns'])):
            print("in here")'''
        for cve in result['vulns']:
            if (vuln_count == 3):
                break
            # result['vulns'][cve]['references'].length()
            # result['vulns'][cve]['references'][0]
            print(cve, end='\t')
            print(result['vulns'][cve]['references'][0])
            print(result['vulns'][cve]['references'][1])
            print(result['vulns'][cve]['references'][2])
            vuln_count = vuln_count + 1
    except:
        print("vulns: NULL")
    print('\n')

   

'''
file = open("data.txt", "w")
file.write(str(results))
file.close()
'''
