#Password Generator Project
import random
letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

print("Welcome to the PyPassword Generator!")
nr_letters= int(input("How many letters would you like in your password?\n"))
nr_symbols = int(input(f"How many symbols would you like?\n"))
nr_numbers = int(input(f"How many numbers would you like?\n"))

#Eazy Level - Order not randomised:
#e.g. 4 letter, 2 symbol, 2 number = JduE&!91
rand_letter = ""
for letter in range(1, nr_letters + 1):
  rand_letter += random.choice(letters)

rand_symbol = ""
for symbol in range(1, nr_symbols + 1):
  rand_symbol += random.choice(symbols)

rand_number = ""
for number in range(1, nr_numbers + 1):
  rand_number += random.choice(numbers)

rand_password = rand_letter + rand_number + rand_symbol

print(rand_password)

#Hard Level - Order of characters randomised:
#e.g. 4 letter, 2 symbol, 2 number = g^2jk8&P
len_of_pass = nr_letters + nr_numbers + nr_symbols
random_password_randomized = ""
for passw in range(1, len_of_pass):
  random_password_randomized += random.choice(rand_password)


print(rand_letter)
print(rand_number)
print(rand_symbol)
print(random_password_randomized)
