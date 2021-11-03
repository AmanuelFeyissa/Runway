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
