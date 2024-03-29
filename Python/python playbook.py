# To Comment in Python we use the # Sign and write whatever
# indentation will cause errors

############################################################
# Printing to console we use the print() function
# We can use the double quotation inside the parenthesis or
# single quote interchangeably especially if we are quoting
# something in out code we should use single quoting
# No Semi Colon Needed at the end
############################################################

print("Hello World")

############################################################
# To start a new line we use \n
# To concatenate or combine strings we use + sign
############################################################

print("Hello" + "World\n")

############################################################
# To get input from the user we use the input() function
# input function has a prompt displayed and after the input
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
# RULES: No space between letters or words when making a variable
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
# Boolean: is a data Type defined to represent the True or False of a condition
############################################################

"Hello World" # string
# SubScript: is a way to display/manipulate a single character from a string
"Hello"[0] # OUTPUT is H

123 # Integer
123_456_789 # OUTPUT 123456789 underscore is used to simplify but it doesnt affect the code
123.456 # Float

# Boolean values true and false start with uppercase letters
# Case sensitive
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
# Mathematical Operations: are combining multiple operators and operands to calc
# Order of Precedence: PEMDASLR
# PEMDASLR parenthesis, exponent, multiplication, division, addition, subtraction
# In division and multiplication, adding and subtraction the order of importance is
# the same so we use the LR (left to right) to calculate which comes first
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
# comparison operators: to work with the if else in the condition section
# Nested if: if else statement within a if else statement
# Multiple if: multiple if statements within the same indentation
# Logical Operators: combining different conditions under one statement
############################################################

#if else
if conditon1: # Needs a colon to indicate the condition has ended
    do this   # Needs to be indented
else:
    do this

# Comparison operators
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
# Random Module: is a module that has a lot of functions for randomization of numbers
# List: is a data structure used when we want to store multiple similar data at once
# Nested List: is list within a list
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

############################################################
# For Loop with Python List: using list as a range to go through and manipulate it
# For Loop and the range() function: for loop with a range function is the standard wau of using loops
# range(): is a function for setting the range of the variable from and to
############################################################

# For loop with Python list
fruits = ["Apple", "Orange", "Banana"]
for fruit in fruits:
    print(fruit) # Prints Apple Orange Banana in Order

for value in variable:
    do something

# For Loop with range()
for score in range(1, 5): #1 to 4 doesnt include 5
    do something
# range() has an extra parameter we can give it that makes the value increment by what we want
for value in range(1, 101, 2): # increments by 2. 1 3 5 7 9 ..
    do something

# sum() function is used to ad numbers that are in the list or numbers
num [1, 6, 7, 8]
sum(num) # Output 22
# min func is used to determine the minimum of a number in a list
min(num) # Output 1
# max() func is used to determine the maximum of a number in a list
max(num) # Output 8
# .shuffle() function is inside the random module, it is used to shuffle the item in a list
random.shuffle(num) # shuffles it randomly eg [6, 1, 8, 7]

############################################################
# Functions: are what we use when there is a reusable code we want to call
# Function with inputs: we can create parameters and pass arguments to our function to do various things
# other than expecting it to do the same thing all the time
# Parameter: is the name of the data that is begin passed in
# Argument: is the actual value of the data
# Positional Argument: is when the position of where the parameter being passed matters
# Keyword Argument: is assigning the parameter to the argument when being called
# Indentation: is like a curly brace in python and spaces are recommended than tabs
# While loops: is a loop that continues to work unless certain condition is met
############################################################

# Built in Functions
print() max()   len() # and Much more
sum()   min()
# Making your own functions
def function_name(): # def is used to create a function and function name has brackets and colon at the end
    do something

function_name() # calling the function

#Function with inputs
def function_name(parameter1, parameter2): # we name the parameters under parenthesis
    do something parameter1
    do something parameter2

function_name(5, 7) #Calling with passing argument of 5 and 7

# Positional Argument
def function_name(parameter1, parameter2):
    do something parameter1
    do something parameter2

function_name(5, 6) # Positional Argument
# Keyword Argument
def function_name(parameter1, parameter2):
    do something parameter1
    do something parameter2

function_name(parameter1 = 5, parameter2 = 6) # Keyword Argument

# While loops
while something_is_true: # something_is_true is the condition
    do something

#Math module
import math
math.ceil(3.4) # Rounds the variable upwards which means to 4

# index() method is used to find the exact place or index of an item and manipulate it
fruits.index() # Usually works better with for loops
for fruit in fruits:
    x = fruits.index(fruit) # gives the current index of the list item

############################################################\
# Dictionaries: is a way to group related data with the key and values and manipulate them
# Nesting: Putting list inside a list, Dictionaries inside Dictionaries,Dictionaries inside lists and vice versa
############################################################

#Dictionaries
{key: value} #synax
new_dic = {"name": "Amanuel", "age": 22} # declaring a Dictionary
new_dic["name"] # Calling item in the Dictionary with key, outputs Amanuel
# Adding item later in our code
new_dic["sex"] = "male" # added
# To add an empty Dictionary
new_dic = {}
# To wipe an entire Dictionary
new_dic = {} # only works if it had been declared before and data had been added
# To edit an item in Dictionary
new_dic["name"] = "Hello" # Amanuel changed to Hello
# To loop through a Dictionary
for key in new_dic:
    print(key) # prints out the key not the value
    print(new_dic[key]) # prints out the value

# Nesting
# Nesting lists inside another lists
new_list = ["Aman", "New", ["Hello", "Hi"]]
# Nesting list in a Dictionary
some_dic = {
    "France": ["Paris", "Lille"],
    "Germany": ["Berlin", "Hamburg"]
}
# Nesting Dictionary IN Dictionary
some_dic = {
    {"Berlin": "Capital City", "Hamburg": "Beautiful city"},
    {"France": "Capital City"}
}
# Nesting Dictionary in a list
some_list = [
    {
    key: value,
    key: value,
    },
    {
    key: value,
    key: value,
    }
]

############################################################
# Function with outputs: gives an output of some kind using the return keyword
# return: is a keyword that is used to output something from a function
# Multiple return value: we can use multiple return values in conditions to terminate if condition is met
# Docstrings: is a way for us to describe and explain our function for other programmers when it is Called
# Prints Vs Return: the difference is return functions can be used as an argument for another function to pass data
# where as print functions can not
# Recursion: is a concept of calling a function within itself
############################################################

# Function with Output
def my_function():
    return 4 - 2 # When called function value is assigned to the function in this case 2
my_function() # is equal to 2

# Multiple return values
def my_function(num1, num2):
    if num1 == 3:
        return      # returns the word "None" if condition is met
    if num2 == 2:
        return 4 - 8
    return num1 - num2

# Docstrings
def my_function():
    """ It describes what the functions going to do in
        a multi line comment way and also can be used as a multi line Comment
        but it is not recommended """
my_function() # the explanation is highlighted by the compiler when called

# Returns used as another function Argument
def new_func(num1, num2):
    return num1 - num2

new_value = new_func(5, 7)
def my_function(num3, num4):
    return num3 * num4

answer = my_function(new_func, num4) # Passed as an argument

# Recursion
def my_function():
    print("Hello")
    if some_var == True:
        do soemthing
    elif some_var == another_condition:
        my_function() # MUST BE USED CAREFULLY IF NOT IT CAN CAUSE AN INFINITE LOOP
# .title(): this function is used to make a case title for any strings
# like capitalizing first character of every word
new = "hElp"
answer = new.title()
print(answer) # output Help

############################################################
# Local Scope: is when we declare a variable or other things like function inside or in indented
# as a child of a function, and is only accessible inside that function
# Global Scope: is when we declare a variable or other things like function outside or in our file
# and is accessible by everything
# Modifying the global scope: if we wish to modify a global scope inside our local scope we use the keyword global
# It is RECOMMENDED to not modify a global scope because we might produce some bugs
# Constant: is a variable that is declared in a global scope and we usually declare it that way because
# it is used for a constant variables that will not be changed throughout the code file like pi
# it is RECOMMENDED to use all caps when we want to define a constant variable to distinguish it from other variables
############################################################

# Local Scope
def function():
    var = "Hello" # var is a local variable because it is declared inside a function

# Global scope
var = "Hi" # var is a global variable because it is declared in indentation free or outside any function

# Modifying Global Scope
var = "Hi"
def function():
    global var      # Modifying global variable inside a function or inside a local scope
    var = "name"

# Constants
PI = 3.1415 # usually defined at the top of our code and should be things that are constant throughout our code

############################################################
# Debugging: the process of removing bugs/errors from our code
############################################################

# Technique #1:
# Describe the Problem:
# untangling the problem in detail and understanding it properly

# Technique #2:
# Reproduce the bug:
# if a bug happens occasionally when we test iur code, make that error permanent and then
# tackle the code and fix it so it doesnt happen again

# Technique #3:
# Play Computer:
# is a concept of thinking like the computer to know how it works and how it executes our code
# if we run into a bug, visualizing every line like a computer and going through it is goo way to fix a bug

# Technique #4:
# Fix the errors:
# when we get an error message from our compiler or our editor, we should read the message and figure out
# what went wrong and try to fix it.
# IF we don't understand the error message then copy and search it on google

# Technique #5:
# Using print() function:
# by using the print() we can check where we went wrong by printing every variable that wwe thing is the problem

# Technique #6:
# Use a debugger
# debugger is a software that helps us visualize every step of the process of our code when we run it,
# it helps us find the problem easily by going through each step one by one
# Thonny and pythontutor.cpm are the two best examples

# Technique #7:
# Take a break

# Technique #8:
# Run the code more often, when we think we have changed the code we should run it to check for bugs

# Technique #9:
# Ask a friend

# Technique #10:
# Search on stackoverflow or if you don't find any answers then ask it yourself

############################################################
# Object Oriented Programming: is called object oriented because we model our code based on a real life objects
# Attribute: is a variable that is associated with a modeled object
# Method: is a function that a particular modeled object can do
# Class: is a blueprint that is used to create an object
# Object: is the code that is created based on the blueprint which is the class
############################################################

car = carBlueprint() # creating an object
# car is the object
# carBlueprint() is the class

# creating a class
class Car:
    print("Hello")

vehicle_1 = Car() # creating the object

# if we wish to leave the class or function empty temporarily
class Car:
    pass # we use this keyword

# Creating an attribute from the class
user_1.username = "Hello" # .username is the attribute name and "Hello" is the value

# Constructor
class Car:
    def __init__(self): # __init__ is used to create a Constructor and self is used to represent the object associated with the class
        print("Hello")

# To set the attribute in the Constructor
class Car:
    def __init__(self, seat): # seat is a parameter we created
        self.seat = seat # self.seat is the attribute of the Constructor and seat is the value being passed
        self.following = 0 # default attribute, an attribute that is displayed when used
user_1 = Car(5) # we must pass an argument if our Constructor has a parameter, 5 is the argument being passed

# Adding methods to class
class Car:
    def my_function(self): # adding a method is the same as creating a function but we need to have the self in our parameter
        hello.username = "Hey"

user_1.my_function() # calling a function from class car 
