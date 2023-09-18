

nterms = int(input("Enter the Number of Terms:"))

n1,n2=0,1
count=0
summ=0
if nterms <=0:
    	print("Please Enter Positive Number")
elif nterms==1:
	print("Fibbonacci Sequence upto",nterms,":")
	print(n1)

else:
	print("Fibonacci Sequence:")
while count < nterms:
	print(n1)
	nth = n1 +n2
	n1 = n2
	n2 = nth
	count += 1
summ += nth-1
print("Sum of Terms:",summ)
