import urllib.request
from bs4 import BeautifulSoup
import ssl

# To Ignore the SSL Certificate
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

# Input url, count, position
url = input("Enter URL: ")
count = int(input("Enter count: "))
pos = int(input("Enter position: "))

# List for the names retrieving
url_names = []

while count > 0:
    print ("retrieving: {0}".format(url))
    html = urllib.request.urlopen(url, context=ctx).read()
    soup = BeautifulSoup(html, "html.parser")
    anc = soup('a')
    url_name = anc[pos-1].string
    url_names.append(url_name)
    url = anc[pos-1]['href']
    count -= 1

print (url_names[-1])