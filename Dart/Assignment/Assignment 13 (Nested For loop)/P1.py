rows = int(input("Enter the number of rows : "))
num = 0
for i in range(1,rows+1):
    num = i
    for j in range(1,rows+1):
        print(num, end=" ")
        num+=1
    print()