import random
min_value =int(input("Enter the Minimum Value:"))
max_value =int(input("Enter the Maximum Value:"))
n =int(input("Enter the Number of Random Values:"))

sum1 = 0
ran = []

for i in range(n):
	x= random.randint(min_value,max_value)
	ran.append(x)

print("\nSeries of Random Numbers:")
print(ran)

for num in ran:
	sum1 += num

print("\nSum of the Random Series")
print(sum1)
