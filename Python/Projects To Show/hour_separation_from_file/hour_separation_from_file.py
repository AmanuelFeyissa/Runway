fname = input('Enter the name if the File: ')

file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\hour_separation_from_file\\mbox-short.txt')
count = {}
hour_list = []

for line in file_open:
    xfile = line.split()
    if len(xfile) > 2 and xfile[0] == 'From':
        hour = xfile[5].split(':')
        #print(hour)
        count[hour[0]] = count.get(hour[0],0) + 1
        #print(count)
    else:
        continue
# k for key v for value
for k,v in count.items():
    hour_list.append((k,v))
hour_list.sort()
for k,v in hour_list:
    print(k,v)
