def removeVowels(inputstring):
    vowels = ['a','e','o','i','u']
    for i in range(0,len(inputstring)):
	if inputstring[i] in vowels:
	    if  i == 0:
	    	return removeVowels(inputstring[i+1:])
	    else: 
	        return removeVowels(inputstring[:i]+inputstring[i+1:])
	
    return inputstring	
    
print removeVowels("isntfdo")
