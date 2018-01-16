## Self-Describing Numbers

An integer is said to be "self-describing" if it has the property that, when digit positions are labeled `0` to `n - 1`, the digit in each position is equal to the number of times that that digit appears in the number.

For example, **2020** is a four-digit self-describing number:

```
  position   0   has value   2   and there are two 0s in the number;
  position   1   has value   0   and there are no 1s in the number;
  position   2   has value   2   and there are two 2s;
  position   3   has value   0   and there are zero 3s.
```

Write a function that checks whether a given positive integer is self-describing.

Source: http://rosettacode.org/wiki/Self-describing_numbers
