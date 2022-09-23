import json
import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET

user_url = input('Enter location: ')
user_adress = urllib.request.urlopen(user_url)
data = user_adress.read()

print('Retrieving', user_url)
print('Retrieved', len(data), 'characters')

info = json.loads(data)
info = info["comments"]

sum = 0

for item in info:
    #print("Count: ",item["count"])
    sum = sum + int(item["count"])
    #print("Sum: ", sum)

print("Count: ", item['count'])
print("Sum: ", sum)