#fname = input("Enter file name: ")
file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\find_repeated_words_dict\\mbox-short.txt')
words = []
count = {}
for line in file_open:
    xfile = line.rstrip()
    if not xfile.startswith('From:'):
        continue
    words = xfile.split()
    #print(words[1])
    for word in words:
        count[word] = count.get(word, 0) + 1
        count['From:'] = 0
#print('Counts', count)
bigcount = None
bigword = None
for word,count in count.items():
    if bigcount is None or count > bigcount:
        bigword = word
        bigcount = count
print(bigword, bigcount)