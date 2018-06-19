
"""
Created on Fri Apr 20 12:53:44 2018

@author: Elnaz Koopahi
"""
def matching_closing_parenthesis(s):
    l=[]
    for index in range(len(s)):
        if s[index]=='(':
            l.append(index)
        elif s[index]==')':
            try:
                print(l.pop(),',', index)
            except IndexError:
                print("Close parenthesis at", index, "does not match with any open paranthesis")
        
    while len(l):
                print("open parenthesis at", l.pop(), "does not match with any close paranthesis")


def test_matching():
    matching_closing_parenthesis("asdasdad")
    matching_closing_parenthesis("asdad(")
    matching_closing_parenthesis("adsad(asda)(asdadeh0())")
    matching_closing_parenthesis("")