#fname = input("Enter file name: ")
file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\list_sorting\\romeo.txt')
lst = list()
new_list = []
for line in file_open:
    xfile = line.rstrip()
    lst = xfile.split()
    for listed in lst:
        if listed not in new_list:
            new_list.append(listed)
    #for i in range(len(lst)):
        #single_list = lst[i]
        #print(single_list)
        #new_list.append(single_list)
        #if single_list is lst[i]:
        #    continue
        #else:
        #    lst.append(single_list)
        #print(lst)
print(sorted(new_list))