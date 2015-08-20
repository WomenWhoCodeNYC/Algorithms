
# coding: utf-8

# In[44]:

#Python 2
import string
def isPalindrome(string):
    string = string.replace(" ","")
    if len(string) <= 1:
        return True
    elif string[0].lower() != string[len(string)-1].lower() :
        return False
    else: 
        return isPalindrome(string[1:len(string)-1])
        
#print isPalindrome("Taco cat")
#print isPalindrome("ABSDDSA")
    

