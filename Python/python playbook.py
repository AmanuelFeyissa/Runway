# To Comment in Python we use the # Sign and write whatever
# indentation will cause errors

############################################################
# Printing to console we use the print() function
# We can use the double quotation inside the parentesis or
# single quote interchangebly esepecially if we are quoting
# something in out code we should use single quoting
# No Semi Colon Needed at the end
############################################################

print("Hello World")

############################################################
# To start a new line we use \n
# To concatinate or combine strings we use + sign
############################################################

print("Hello" + "World\n")

############################################################
# To get input from the user we use the input() function
# input function has a prompt displayer and after the input
# it will be replaced by the data that was put in
############################################################

input("What is your name? ")

############################################################
# len() function displays the length of the string in number
############################################################

len("AMAN") #OUTPUT 4

############################################################
# Variables: To create variables we simply write out a
# letter, a word which Obey the variable naming rules
# RULES: A number can never come FIRST
# RULES: No space bettwen letters or words when making a variable
# RULES: we should not use keywords or function names
# RULES: we can use underscore for combining words
# Make sure your variable names are meaningful and readable
############################################################

name = input("What is your name? ")
length = 500
name = "Aman" # Overridden by the string aman

############################################################
# Primitive Data Types: are those that are pri defined in the compiler
# String : is a data type that consists of string of characters
# Integer: is data type that represents whole numbers
# Float: is a data type that represents decimal numbers
# Boolean: is a data Type definded to represent the True or False of a condition
############################################################

"Hello World" # string
# SubScript: is a way to display/manipulate a single character from a string
"Hello"[0] # OUTPUT is H

123 # Integer
123_456_789 # OUTPUT 123456789 underscore is used to simplify but it doesnt affect the code
123.456 # Float

# Boolean values true and false start with uppercase letters
# Case sensetive
True
False

############################################################
# Type Error: is the error we get when we try to mix different data types together
# Type Checking: type() function is used to check the data type of the specified value
# Type Conversion(Casting): is changing the data type of one value to Another
############################################################

type("Hello") # OUTPUT <class> str
type(123) # OUTPUT <class> int
type(123.45) # OUTPUT <class> float

# Type Conversion
# BEST USED FOR CONVERTING VARIABLES AND INPUT
str(12345) # changes it to string
int("123") # changes it to integer
float("100.5") # changes it to float

############################################################
# Mathematical Operations: are combining multiple operators and oprands to calc
# Order of Precedence: PEMDASLR
# PEMDASLR parenthesis, exponent, multiplication, division, addition, subtraction
# In devision and multiplication, adding and subtraction the order of importance is
# the same so we use the LR (left to right) to calculate which cimes first
############################################################

3 + 4
5 - 3
5 / 3 # Output is in decimal
5 * 3
5 ** 3 # means 5 the power of 3

# Floor division is changing the result into a whole number
8 // 3 # Outputs 2

############################################################
# Number Manipulation: rounding up and floor division
# rounding up: we use the round() function to round a number
# f string: is the way to mix display/manipulate different data types
############################################################

round(2.666666) # Output is 3
round(2.666666, 2) # 2 after comma shows the number of digits it should round up
                   # Output is 2.67


variable = 0
# f String
print(f"The Score is {variable}") # mixing string and integer

############################################################
#Control Flow
# if else: gives a choice for the user, condition to make a decision
# comparision operators: to work with the if else in the condition section
# Nested if: if else statment within a if else statment
# Multiple if: multiple if statments within the same indentation
# Logical Operators: combining different conditons under one statment
############################################################

#if else
if conditon1: # Needs a colon to indicate the conditon has ended
    do this   # Needs to be indented
else:
    do this

# Comparision operators
# >     Greater than
# <     Less than
# >=    Greater than or equal to
# <=    Less than or equal to
# ==    Equal to
# !=    Not Equal to

#Nested if
if condition:
    if condition:
        do this
    else:
        do this
else:
    do this

# elif is used when we have multiple conditions
# We can use as many elif as we want
if condition:
    do this
elif conditon:
    do this
elif conditon:
    do this
else:
    do this

# Multiple if
# We can use as many if as we want
if conditon:
    do this
if condition:
    do this
if conditon:
    do this

# Logical Operators: and or not keywords to combine conditions
if conditon == 0 and conditon1 == 1:
    do this
if conditon == 0 or conditon2 == 1:
    do this
if conditon == 0 not condition1 == 1:
    do this

# count() function is used to count a character in as string
  "Hello".count("H") # Output will be 1
# lower() function is used to change a string to a lower Case
  "HELLO".lower() # Output will be hello
  name = "AMAN"
  name.lower() # Output will be aman
# the Modulo operator is used to display the remainder of a number
# % is the Sign
  3 % 2 # Output is 1

############################################################
# Random Module: is a module that has alot of functions for randomization of numbers
# List: is a data structure used when we want to store multiple similar data at once
# Nested List: is alist within a list
# Index Error: is an error that we get if we try to call a list item that doesnt exist
############################################################

#Random Module
# First we need to import at the top
import random #At the top

# To create random whole numbers
rand_int = random.randint(1, 10) # range from 1 to 10 includes 1 and 10

# To create random float numbers
rand_float = random.random() # range from 0 to 1 but doesnt include 1
rand_float * 5 # expands the float random range to 0 to 5 doesnt include 5

# List
fruits = [item1, item2]
fruits[0] # Outputs item1
# We can override items by simply replacing their index
fruits[0] = "Alex" # Overrides item1
# To add items we use the append() function
fruits.append("Aman") # Adds the new item after the last One
# To add multiple item we use the extend() function
fruits.extend(["Hello", "HI", "JA"])
# split() func is used to separate an input/data into lists
names = sinput.split(", ") # separates the items around the comma and space into lists
# To get the total number of items in a list we use the len() func
len(fruits) # Output 6 which is the total number of items on the list
# To get random item from a list we use the choice() func in the random Module
random.choice(fruits)

# Nested list
 fruits = ["Apple", "Orange", "Banana"]
 vegis = ["Carrot", "Lettuce"]
 food = [fruits, vegis] # Nested List
