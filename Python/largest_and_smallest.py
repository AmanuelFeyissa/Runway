largest = None
smallest = None
while True:
    num = input("Enter a number: ")
    try:
        conv_num = int(num)  
    except:
        if num == "done":
            break
        else:
            print("Invalid input")
            continue
        
    if largest is None or smallest is None:
        largest = conv_num
        smallest = conv_num
    elif conv_num > largest:
        largest = conv_num  
    elif conv_num < smallest:
        smallest = conv_num
    print(conv_num, largest, smallest)

print("Maximum is", largest)
print("Minimum is", smallest)
    