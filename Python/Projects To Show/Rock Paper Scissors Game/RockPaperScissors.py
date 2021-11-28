# A Game Program that plays Rock Paper Scissors with the computer
import random

rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''

game = [rock, paper, scissors]

user_input = int(input("What do you choose? Type 0 for rock, 1 for paper or 2 for Scissors. \n"))
if user_input >= 3 or user_input < 0:
  print("Invalid number you lose.")
else:
  print(game[user_input])

  computer_input = random.randint(0, 2)

  print("Computer chooses: ")
  print(game[computer_input])

  #Game Logic
  if computer_input == 0 and user_input == 2:
    print("You lose")
  elif computer_input == 2 and user_input == 1:
    print("You lose")
  elif computer_input == 1 and user_input == 0:
    print("You lose")
  elif computer_input == user_input:
    print("Its a draw")
  else:
    print("You win")
