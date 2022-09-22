import re

file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\regular expression assignment\\actual_data.txt')
file_extracted_list = []

for line in file_open:
     file_extracted = re.findall('[0-9]+',line)
     file_extracted_list = file_extracted_list + file_extracted

sum = 0
for num in file_extracted_list:
    sum = sum + int(num)

print(sum)