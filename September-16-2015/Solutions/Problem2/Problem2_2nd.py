import math
def door100():
    for i in range(1, int(math.sqrt(100)+1)): 
        print ("%sth door is open\n" % (i*i))

door100()
