#Calculator
from art import logo
print(logo)
# add
def add(n1, n2):
  return n1 + n2

# subtract
def subtract(n1, n2):
  return n1 - n2

# multiply
def multiply(n1, n2):
  return n1 * n2

# divide
def divide(n1, n2):
  return n1 / n2

operations = {
  "+": add,
  "-": subtract,
  "*": multiply,
  "/": divide
  }

num1 = float(input("What's the first number? "))

for operator in operations:
  print(operator)
which_op = input("What operation do you want to do? ")

num2 = float(input("What's the second number? "))

operat_fun = operations[which_op]
first_answer = operat_fun(num1, num2)

print(f"{num1} {which_op} {num2} = {first_answer}")

not_exit = True
while not_exit:
  ask = str(input(f"Type 'y' to continue with the previous calculation {first_answer} or type 'n' to exit "))

  if ask == "y":
    for key in operations:
      print(key)
    which_op = input("Choose another operation? ")

    num3 = float(input("What's the new number? "))

    operat_fun = operations[which_op]
    second_answer = operat_fun(first_answer, num3)
    print(f"{first_answer} {which_op} {num3} = {second_answer}")
    first_answer = second_answer

  elif ask == 'n':
    print("Goodbye")
    not_exit = False
  else:
    print("Invalid input")
    not_exit = False
