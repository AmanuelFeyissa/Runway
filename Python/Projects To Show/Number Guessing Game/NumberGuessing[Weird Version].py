import random

#RANDOM_NUM store random numbers between 1 and 100
RANDOM_NUM = random.randint(1, 100)

# Display First
print("Welcome to the number Guessing Game")
print("I have a picked a number between 1 - 100")

# difficulity variable for determining the level
difficulity = input("Pick a difficulity 'easy' or 'hard': ")
easy = 10
hard = 5

# If guess is higher or lower than give hints
def guess_input(num):
  if num > RANDOM_NUM:
    print("Too high")
    print("Guess again")
  if num < RANDOM_NUM:
    print("Too low")
    print("Guess again")
  if guess == RANDOM_NUM:
    print(f"You are correct the number was {RANDOM_NUM}")
    return

# if easy the attempts becomes 10 and
# if hard the attempts becomes 5
if difficulity == "easy":
  while easy != 0:
    print(f"You have {easy} attempts left")
    guess = int(input("Guess the number: "))
    guess_input(guess)

    easy -= 1

elif difficulity == "hard":
  while hard != 0:
    print(f"You have {hard} attempts left")
    guess = int(input("Guess the number: "))
    guess_input(guess)
    hard -= 1
    if hard == 0:
      print("You run out of attempts")
