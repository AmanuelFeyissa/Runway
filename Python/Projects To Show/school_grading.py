try:
   score = float(input("Input score between 0 and 1: "))
except:
    print("Error")
    quit()

if score >= 0.9 and score <= 1:
    print("A")
elif score >= 0.8  and score <= 1:
    print("B")
elif score >= 0.7  and score <= 1:
    print("C")
elif score >= 0.6  and score <= 1:
    print("D")
elif score < 0.6 and score >= 0:
    print("F")
else:
    print("Error Out of range")
    quit()


