import random
from art import logo, vs
from game_data import data
from replit import clear

against_b = random.choice(data)
compare_a = random.choice(data)

game_not_over = True

def compare_two(chosen):

  current_score = 0
  if chosen == "A" and compare_a['follower_count'] > against_b['follower_count']:
    # assigning compare to agains
    compare_a = against_b
    current_score += 1
    return f"You are right, current score {current_score}"
  elif chosen == "B" and against_b['follower_count'] > compare_a['follower_count']:
    # assigning compare to agains
    compare_a = against_b
    current_score += 1
    return f"You are right, current score {current_score}"
  else:
    return f"You are wrong, final score {current_score}"
    global game_not_over
    game_not_over = False

while game_not_over:
    print(logo)

    print(f"{compare_a['name']}, a {compare_a['description']}, from {compare_a['country']}")

    print(vs)

    print(f"{against_b['name']}, a {against_b['description']}, from {against_b['country']}")

    answer = input("Who has more followers? Type 'A' or 'B': ")
    compare_two(answer)

    clear()
