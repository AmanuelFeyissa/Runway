#The FizzBuzz game in Python
for game in range(1, 101):
  if (game % 3 == 0) and (game % 5 == 0):
    print("fizz buzz")
  elif game % 5 == 0:
    print("buzz")
  elif game % 3 == 0:
    print("fizz")
  else:
    print(game)
