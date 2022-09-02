
try:
    hrs = float(input("Hours:"))
    rates = float(input("rates:"))
except:
    print("Error Enter numeric input")
    quit()    

if hrs > 40:
    regular = hrs * rates
    overtime = (hrs - 40) * (rates * 0.5)
    gross = regular + overtime
    print(gross)
else:
    regular = hrs * rates
    print(regular)