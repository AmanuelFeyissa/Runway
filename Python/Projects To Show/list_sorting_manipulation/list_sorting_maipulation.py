#fname = input("Enter file name: ")
file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\list_sorting_manipulation\\mbox-short.txt')
words = []
count = 0
for line in file_open:
    xfile = line.rstrip()
    if not xfile.startswith('From:'):
        continue
    words = xfile.split()
    print(words[1])
    # To find the specific number of lines that starts with from
    for i in range(xfile.startswith('From:')):
        count = count + 1
print("There were", count, "lines in the file with From as the first word")