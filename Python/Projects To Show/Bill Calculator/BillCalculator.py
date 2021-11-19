# A Program that calculates the bill of your meal then deducts a tip then finally
# splits the bill with your collegues

#Prompt the user and recieve data
# Cast that string data to appropriate data type
print("Welcome to the tip calculator.")
total_bill = float(input("What was the total bill? $"))

tip_percent = int(input("What percentage of tip would you like to give? 10, 12, or 15? "))

split_bill = int(input("With how many people would you like to split the bill? "))

# In order to get the tip we first need to get the percentage then multiply it to the total bill
# 0.01 is used to change the percentage into a decimal number
tip_cash = total_bill * (0.01 * tip_percent)

# If we add the total bill to the tip and divided it with the number of people
# that shared the total bill, we will get the bill per person
# Rounding the bill per person to two decimal value
bill_per_person = round((total_bill + tip_cash) / split_bill, 2)

# Printing the result
print(f"Each person should pay {bill_per_person}")
