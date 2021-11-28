# A Love Calculator Program
print("Welcome to the Love Calculator!")
name1 = input("What is your name? \n")
name2 = input("What is their name? \n")

# Combinig the name then changing it to lower case
name_combine = name1 + name2
name_lowercase = name_combine.lower()

# Counting how many T,R,U,E charachters there are in their name
t = name_lowercase.count("t")
r = name_lowercase.count("r")
u = name_lowercase.count("u")
e = name_lowercase.count("e")

# adding the counts
true = t + r + u + e

# Displaying their result
print(f"T occurs {t} times")
print(f"R occurs {r} times")
print(f"U occurs {u} times")
print(f"E occurs {e} times")

# Displaying their result
print(f"Total = {true}")

# Counting how many L,O,V,E charachters there are in their name
l = name_lowercase.count("l")
o = name_lowercase.count("o")
v = name_lowercase.count("v")
e = name_lowercase.count("e")

# adding the counts
love = l + o + v + e

# Displaying their result
print(f"L occurs {l} times")
print(f"O occurs {o} times")
print(f"V occurs {v} times")
print(f"E occurs {e} times")

# Displaying their result
print(f"Total = {love}")

# First converting it to str then concatinating it concatinating then changing
# back to int
love_calc = int(str(true) + str(love))

# Displaying their result
print(f"Your love Score is {love_calc}")

if love_calc < 10 or love_calc > 90:
  print(f"Your score is {love_calc}, you go together like coke and mentos lol.")
elif love_calc > 40 and love_calc < 50:
  print(f"Your score is {love_calc}, yo are alright together.")
else:
  print(f"Your score is {love_calc}.")
