#Caesar Cipher
import string

def cipher(string, key, encode= True):
    string = string.lower()
    returnstr = ""
    letters= string.lowercase

    if (not encode):
        key = -key

    for ch in string:
        returnstr += letters[((letters.index(ch) + key)%26)]

    return returnstr
        
        
