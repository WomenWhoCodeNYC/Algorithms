## Binary search

What's binary search?  Let's have our old friend Wikipedia tell us a little about it!

> In computer science, binary search...is a search algorithm that finds the position of a target value within a sorted array. 

Great!  What are the steps it takes?

> Binary search compares the target value to the middle element of the array; if they are unequal, the half in which the target cannot lie is eliminated and the search continues on the remaining half until it is successful. If the search ends with the remaining half being empty, the target is not in the array.

So, write a function that uses those steps to find the index of a given element within a sorted array.

#### Example:

```javascript
f([0, 1, 4, 9, 15, 22, 22, 59], 9)
// 3
```
