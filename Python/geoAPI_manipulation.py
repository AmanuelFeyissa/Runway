import urllib.request, urllib.parse, urllib.error
import json
import ssl

api_key = False

if api_key is False:
    api_key = 42
    serviceurl = 'http://py4e-data.dr-chuck.net/json?'
else :
    serviceurl = 'https://maps.googleapis.com/maps/api/geocode/json?'

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

while True:
    addr = input('Enter location: ')
    if len(addr) < 1: break

    parameters = {}
    parameters['address'] = addr
    if api_key is not False: parameters['key'] = api_key
    url = serviceurl + urllib.parse.urlencode(parameters)

    print('Retrieving', url)
    user_handle = urllib.request.urlopen(url, context=ctx)
    data = user_handle.read().decode()
    print('Retrieved', len(data), 'characters')

    try:
        js = json.loads(data)
    except:
        js = None

    if not js or 'status' not in js or js['status'] != 'OK':
        print(data)
        continue

    place_id = js['results'][0]['place_id']
    print('Place id ',place_id)