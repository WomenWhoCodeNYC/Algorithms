# Count the number of ways to cover distance

## Problem
Given a distance, count total number of ways to cover the distance with steps, leaps, and bounds!  A step covers a distance of 1, a leap covers a distance of 2, and a bound covers a distance of 3.

## Examples

```javascript
f(3) // How many ways can you cover a distance of 3?
// => 4
// step (1) + step (1) + step (1)
// step (1) + leap (2)
// leap (2) + step (1)
// bound (3)

f(4)
// => 7
```

[Source](https://www.geeksforgeeks.org/count-number-of-ways-to-cover-a-distance/)
