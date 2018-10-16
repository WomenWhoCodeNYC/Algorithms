# Best Shuffle

## Problem

Shuffle the characters of a string in such a way that as many of the character values are in a different position as possible.

A shuffle that produces a randomized result among the best choices is preferred, but a deterministic approach that produces the same sequence every time is okay.

Display the result as follows:

```
original string, shuffled string, score
```

The score gives the number of positions whose character value did not change.

## Example

```javascript
f(corgi);
# => corgi, irogc, (0)

f(a);
# => a, a, (1)
```

[Source](http://rosettacode.org/wiki/Best_shuffle)
