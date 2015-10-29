def Fizzbuzz():
    for i in range(1,101): print("Buzz"*(i%3==0) + "Fizz"*(i%5==0) or i)
Fizzbuzz()
