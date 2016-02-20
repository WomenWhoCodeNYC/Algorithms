def FizzBuzz():
    for i in range(1,101):
        if (i % 3 == 0):
	    if(i % 5 == 0 ):
	        print "FizzBuzz"
	    else: 
	        print "Fizz"
	else: 
	    if(i % 5 == 0):
	        print "Buzz"

FizzBuzz()

