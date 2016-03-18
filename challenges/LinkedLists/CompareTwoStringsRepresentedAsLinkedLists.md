##Compare two strings represented as linked lists

The following problem is taken from [geeksforgeeks.org](http://www.geeksforgeeks.org/compare-two-strings-represented-as-linked-lists/). NB: the link contains solution. We recommend you to try this yourself first.

Given two linked lists, represented as linked lists (every character is a node in linked lists), write a function compare() that works similar to strcmp(), i.e., it returns 0 if both strings are same, 1 if first linked list is lexicographically greater, and -1 if second string is lexicographically greater.

Examples:

Input:   
list1 = g->e->e->k->s->a  
list2 = g->e->e->k->s->b  
Output: -1

Input:   
list1 = g->e->e->k->s->a    
list2 = g->e->e->k->s  
Output: 1

Input:  
list1 = g->e->e->k->s  
list2 = g->e->e->k->s  
Output: 0
