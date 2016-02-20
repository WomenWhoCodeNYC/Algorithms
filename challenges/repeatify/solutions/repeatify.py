#Python 2
#Python 3, use: isinstance(string, str)
def repeatify(string, number): 
    if not isinstance(number, int) or not isinstance(string, basestring):
	return False
    elif number == 0:
    	return ""
    else:
        return string + repeatify(string, number - 1)
        
#print repeatify("Hello", 3)
#print repeatify(3,3)
#print  repeatify("Hello","hi")




