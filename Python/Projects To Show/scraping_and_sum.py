import urllib.request, urllib.error, urllib.parse
from bs4 import BeautifulSoup

html = urllib.request.urlopen('http://py4e-data.dr-chuck.net/comments_1641306.html').read()
soup = BeautifulSoup(html)

spans = soup('span')
sum = 0
for span in spans:
    sum = sum + int(span.contents[0])
print(sum)