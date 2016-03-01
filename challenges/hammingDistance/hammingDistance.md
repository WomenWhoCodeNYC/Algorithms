##Hamming distance

The Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In another way, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. If the length of strings differ, we consider that the Hamming Distance cannot be found out. The task is to find out the Hamming Distance between two string s and t.

Write a function that prints the Hamming Distance between the two strings. Print "-1" (without quotes) if it is not possible to calculate it.

###Sample Input :
* battle
* cattle
* score
* course


###Sample Output :
* 1
* -1

###Explanation

* For the first test case , there is only 1 character that is different in the strings at a corresponding position. So ans=1.
* For the second test case, the length of strings is not equal. So ans=-1.

Source: https://www.hackerrank.com/contests/code-clash-2015/challenges/hamming-distance-1
submitted by [Stefania Druga](https://github.com/stefania11)
