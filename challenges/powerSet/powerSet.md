# Power set

A set is a collection of values, without any particular order, and no repeated values.

Given a set S, the [power set](https://en.wikipedia.org/wiki/Power_set) (or powerset) of S, written P(S), or 2<sup>S</sup>, is the set of all subsets of S.

## Problem

Write a function with a set S as input that yields the power set 2<sup>S</sup> of S.

For a set which contains n elements, the corresponding power set has 2<sup>n</sup> elements, including the edge cases of [empty set](https://en.wikipedia.org/wiki/Empty_set).

## Example

```javascript
f([1,2,3,4])
// => [], [1], [2], [1,2], [3], [1,3], [2,3], [1,2,3], [4], [1,4], [2,4], [1,2,4], [3,4], [1,3,4], [2,3,4], [1,2,3,4]
```

[Source](http://rosettacode.org/wiki/Power_set)
