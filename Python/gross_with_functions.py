def computepay(hrs, rates):     
    if hrs > 40:
        regular = hrs * rates
        overtime = (hrs - 40) * (rates * 0.5)
        gross = regular + overtime
        return gross
    else:
        regular = hrs * rates
        return regular

try:
    hrs = float(input("Hours:"))
    rates = float(input("rates:"))
except:
    print("Error Enter numeric input")
    quit()
p = computepay(hrs, rates)
print("Pay", p)