#python 2
def permutate(inputString):
    if not isinstance(inputString,basestring):
        return False
    elif len(inputString) <= 1:
        return inputString
    else:
        stringArray = [inputString[0]]
        j = 1

        def permutatation(stringArray, j):
	    stringArray1=set()
	    if j >= len(inputString):
                return stringArray
            else:
                for strings in stringArray:
                    for i in range(0,len(strings)+1):
                            stringArray1.add(strings[:i]+inputString[j]+strings[i:])
			    stringArray = list(stringArray1)
	        return permutatation(stringArray, j+1)

	return permutatation(stringArray, j)
print permutate('abc')

## submitted by [jungjung917](https://github.com/jungjung917)
