#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb 22 11:54:07 2018

@author: mam
"""

#WWC Algorithms - Feb18

#Pig latin

#v = ['a', 'e', 'i', 'o', 'u', 'y']
#word = input('what word? ')
#
#list(word)
#
#for l in word:
#    if word[0] in v[:5]:
#        result = word+'way'
#    else:
#        for l in word:
#            if l in v:
#                vind = word.index(l)
#                result =word[vind:]+ word[:vind]+'ay'
#print(result)


#ArrayPairSum
#f([3, 8, 6, 11, 94, 1], 9)
#// => [[3, 6], [8, 1]] 

#f = [3,8,6,11,94,1]
#tar = 9
#myl=[]
#
#for n in f:
#    m = tar - n
#    if m in f and (n,m) not in myl:
#        myl.append((m,n))
#        
#print(myl)

#remove duplicates
#f('important bear')
# => 'importan be'

#f = 'important bear'
#g =''
#
#for l in f:
#    if l not in g:
#        g+=l
#        
#print(g)

'''
tictactoe
Determine if a tic-tac-toe board, represented by a 3x3 multidimensional array, has a winner.
'''
#samples
#nw1 = [
# ['X', 'O', 'O'],
# ['X', 'O', 'O'],
# ['O', 'X', 'X']
#]
#
#nw2 = [
# ['O', 'X', 'O'],
# ['X', 'O', 'O'],
# ['X', 'O', 'X']
#]
#
#w1 = [
# ['X', 'X', 'X'],
# ['O', 'O', 'X'],
# ['O', 'X', 'O']
#]
#
#w2 = [
# ['O', 'X', 'O'],
# ['X', 'X', 'O'],
# ['O', 'X', 'X']
#]
#
#w3 = [
# ['X', 'O', 'X'],
# ['O', 'X', 'O'],
# ['O', 'O', 'X']
#]
#
#w4 = [
# ['X', 'O', 'X'],
# ['O', 'X', 'O'],
# ['X', 'O', 'X']
#]
#
##check for a win - if all items in the row are the same
#def checker(rows):
#    if len(set(rows))==1:
#        result = 'w'
#    else: 
#        result = 'nw'
#    return result
#
##collect all the rows into a master list of rows
#def rows(m1):
#    master = []
#    m2=[]
#    
#    for row in m1:
#        master.append(row)
#    mT = [list(i) for i in zip(*m1)]
#    
#    for row in mT:
#        master.append(row)
#    for i in range(3):
#        m2.append(m1[i][i])
#    master.append(m2)
#    for i, j in zip(range(3), reversed(range(3))):
#        m2.append(m1[i][j])
#    return master
#
#
##run each row through the checker and see if there's a win
#tots=0
#for m in rows(w4):
#    if checker(m) == 'w':
#        tots+=1
#    else:
#        pass
#
#    
#if tots == 0:
#    print ('No winner')
#else:
#    print('Winner')


'''
f(3) // How many ways can you cover a distance of 3?
// => 4
// step (1) + step (1) + step (1)
// step (1) + leap (2)
// leap (2) + step (1)
// bound (3)

f(4)
// => 7
'''

ways = {'s':1, 'l':2, 'b':3}
tot = 10

from itertools import combinations_with_replacement


def combos(ways, goal):
    goalperm=[]
    for i in range(goal+1):
        perm=combinations_with_replacement(ways.values(),i)
        for j in perm:
            if sum(j) == goal:
                goalperm.append(j)
            else:
                pass
    return len(goalperm)


a = combos(ways, tot)

print(a)

    

    
