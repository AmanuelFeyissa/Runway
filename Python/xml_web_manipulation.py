import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET

input_url = input('Enter location: ')

print('Retrieving', input_url)
url_load = urllib.request.urlopen(input_url)
data = url_load.read()
print('Retrieved', len(data), 'characters')
data.decode()

tree = ET.fromstring(data)

# From the hint using .//count
count =  tree.findall('.//count')
print ("Count: " + str(len(count)))

sum_of_count = 0

for count in count:
    sum_of_count += int(count.text)

print ("Sum:" + str(sum_of_count))