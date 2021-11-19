print('''
*******************************************************************************
          |                   |                  |                     |
 _________|________________.=""_;=.______________|_____________________|_______
|                   |  ,-"_,=""     `"=.|                  |
|___________________|__"=._o`"-._        `"=.______________|___________________
          |                `"=._o`"=._      _`"=._                     |
 _________|_____________________:=._o "=._."_.-="'"=.__________________|_______
|                   |    __.--" , ; `"=._o." ,-"""-._ ".   |
|___________________|_._"  ,. .` ` `` ,  `"-._"-._   ". '__|___________________
          |           |o`"=._` , "` `; .". ,  "-._"-._; ;              |
 _________|___________| ;`-.o`"=._; ." ` '`."\` . "-._ /_______________|_______
|                   | |o;    `"-.o`"=._``  '` " ,__.--o;   |
|___________________|_| ;     (#) `-.o `"=.`_.--"_o.-; ;___|___________________
____/______/______/___|o;._    "      `".o|o_.--"    ;o;____/______/______/____
/______/______/______/_"=._o--._        ; | ;        ; ;/______/______/______/_
____/______/______/______/__"=._o--._   ;o|o;     _._;o;____/______/______/____
/______/______/______/______/____"=._o._; | ;_.--"o.--"_/______/______/______/_
____/______/______/______/______/_____"=.o|o_.--""___/______/______/______/____
/______/______/______/______/______/______/______/______/______/______/_____ /
*******************************************************************************
''')
print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.")

# A Program about conditions
left_or_right = input('You\'re at a crossroad. Where do you want to go? Type "left" or "right"')
left_or_right = left_or_right.lower()

if left_or_right == "left":
  swim_or_wait = input('You\'ve come to a lake. There is an island in the middle of the lake. Type "wait" to wait for a boat. Type "swim" to swim across.')
  swim_or_wait = swim_or_wait.lower()
  if swim_or_wait == "swim":
    print("You get attacked by an angry trout. Game Over.")
  elif swim_or_wait == "wait":
    three_rooms = input("You arrive at the island unharmed. There is a house with 3 doors. One red, one yellow and one blue. Which colour do you choose?")
    three_rooms = three_rooms.lower()
    if three_rooms == "red":
      print("It's a room full of fire. Game Over.")
    elif three_rooms == "yellow":
      print("You enter a room of beasts. Game Over.")
    elif three_rooms == "blue":
      print("You found the treasure! You Win!")
    else:
      print("You chose a door that doesn't exist. Game Over.")
  else:
    print("You fell into a hole. Game Over.")
elif left_or_right == "right":
  print("You get attacked by an angry trout. Game Over.")
else:
  print("You fell into a hole. Game Over.")
