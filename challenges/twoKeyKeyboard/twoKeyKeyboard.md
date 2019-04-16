# Two key keyboard

## Problem

Initially, on a notepad program, only the 'A' is present. You can perform two operations on this notepad for each step:

**Copy All:** You can copy all the characters present on the notepad (partial copy is not allowed).
**Paste:** You can paste the characters which were copied last time.

Given a number _n_ (between 1 and 1000, inclusive), you must get exactly _n_ 'A's on the notepad by performing the minimum number of steps permitted. Output the minimum number of steps to get _n_ 'A'.

## Example

```
Input: 3
Output: 3
Explanation:
Intitally, we have one character 'A'.
In step 1, we use the Copy All operation.
In step 2, we use the Paste operation to get 'AA'.
In step 3, we use the Paste operation again to get 'AAA'.
```

[Source](https://leetcode.com/problems/2-keys-keyboard/)
