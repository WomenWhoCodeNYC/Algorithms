# Minimum index sum

## Problem
Suppose Andy and Doris want to choose where to get lunch, and they both have a list of favorite restaurants represented by strings.

Help them find out their common interest with the least list index sum, i.e. the smallest resulting sum of the indices of the common element. If there is a tie between answers, output all of them with no order requirement. Assume there is always a common element.

## Examples

Example 1:
```javascript
f(
  ["Only Salads", "Pepper's", "Hamburger Princess", "Fried Items"],
  ["Plate", "Six Guys", "Hungry Hungry Hippo", "Only Salads"]
)
// => ["Only Salads"]
// (only one element in common)
```

Example 2:
```
f(
  ["Only Salads", "Fried Items", "Pepper's", "Hamburger Princess"]
  ["Hamburger Princess", "Fried Items", "Only Salads"]
)

// => ["Fried Items", "Only Salads"]
// List index sum of Fried Items is 2 (1 + 1)
// List index sum of Only Salads is 2 (0 + 2)
// which is less than that of Hamburger Princess (3 + 0)
```

[Source](https://leetcode.com/articles/minimum-index-sum-of-two-lists/)
