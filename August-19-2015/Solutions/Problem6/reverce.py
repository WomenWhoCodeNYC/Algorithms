#Python 2
def reverse(inputDict):
    outputDict = {}
    for key, value in inputDict.iteritems():
        if value not in outputDict.keys():
	    outputDict[value] = [key]
	else:
	    outputDict[value].append(key)
    return outputDict
#object1 = {'a':1,'b':2}
#object2 = {'a':'1','b':'2','c':'1','d':'3'}
#print reverse(object1)
#print reverse(object2)
