# The FizzBuzz game in Python
# If the game number is divisible by 3 it prints Fizz
# If the game number is divisible by 5 it prints Buzz
# If the game number is divisible by both 3 and 5 it prints FizzBuzz
for game in range(1, 101):
  if (game % 3 == 0) and (game % 5 == 0):
    print("fizz buzz")
  elif game % 5 == 0:
    print("buzz")
  elif game % 3 == 0:
    print("fizz")
  else:
    print(game)
