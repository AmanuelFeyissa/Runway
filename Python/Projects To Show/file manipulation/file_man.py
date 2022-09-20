
# Receives a file as an input and filters a specific number in the file,
# and puts out the average of that number
fname = input('Enter file name: ')
read_file = open(fname)
count = 0
line_float = 0
for line in read_file:
    line = line.rstrip()   
    if not line.startswith("X-DSPAM-Confidence:"):
        continue
    # xfile = line.find('0')
    count = count + 1
    line_float = line_float + float(line[20:26])
    #line_float += line_float
    #print(count)
    #print(line_float)
result = line_float / count
print('Average spam confidence:', result)