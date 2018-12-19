# Vowel square

## Problem

Write a function that takes a 2D matrix of some arbitrary size filled with letters from the
alphabet, and determine if a 2x2 square composed entirely of vowels exists in the matrix.
If a 2x2 square of vowels is found, the function should return **the top-left position
(row-column) of the square.**

If no 2x2 square of vowels exists, then return the string "not found."

If there are multiple squares of vowels, return the one that is at the most top-left position
in the whole matrix. The input matrix will at least be of size 2x2. 


For example, the array ['abcd', 'eikr', 'oufj'] looks like this:

```
a b c d
e i k r
o u f j 
```

Within this matrix, there is a 2x2 square of vowels: the lower left corner that goes `'ei'` and `'ou'`.

## Example

```javascript
f(['abcd', 'eikr', 'oufj'])
// => '1-0'
```

[Source](https://www.coderbyte.com/editor/guest:Vowel%20Square:JavaScript)
