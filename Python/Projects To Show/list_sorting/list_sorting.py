#fname = input("Enter file name: ")
file_open = open('C:\\Users\\HP\\Documents\\GitHub\\Runway\\Python\\Projects To Show\\list_sorting\\romeo.txt')
lst = list()
for line in file_open:
    xfile = line.rstrip()
    lst = xfile.split()
    for i in range(len(lst)):
        single_list = lst[i]
        #print(single_list)
        if single_list is lst[i]:
            continue
        else:
            lst.append(single_list)
    print(lst)