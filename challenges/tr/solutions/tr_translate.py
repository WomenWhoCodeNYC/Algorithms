#Python program tr (translate)
#Author: Ruth Naebeck

###Normal Translate Function
##import string
##
##def tr(sInput):
##    
##    print sInput.translate(string.maketrans("abc", "123"))
##
##tr("dcba")

#Translate without using built-in function
def tr(sFrom, sTo, sStr):

    sReturn = ""
    
    for cStr in sStr:
        i = 0
        for cFrom in sFrom:
            if cStr == cFrom:
                bStr = True
                break
            else:
                bStr = False
            i = i + 1
        if bStr == True:
            sReturn = sReturn + sTo[i]
        else:
            sReturn = sReturn + cStr
    print sReturn

tr("abc","123","dcba") #d321
tr("abc","123","LOBSTER") #LOBSTER
tr("123", "abc", "bad") #bad
tr("1a","a1","aax11") #11xaa
