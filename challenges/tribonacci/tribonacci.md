Found on [Code Wars](http://www.codewars.com/kata/tribonacci-sequence/javascript)

Similar to the Fibonacci Sequence, the "Tribonacci" sequence takes the sum of the
previous 3 numbers to generate the next number. However unlike the Fibonacci sequence,
Tribonacci takes a "signature" or starting array of numbers. Different signatures
will generate different sequences.

For example. If the starting signature was [1, 1, 1] the resulting sequence would be
```
[1,1,1,3,5,9,17,31,...]
```
but if the signature was [0,0,1] it would be
```
[0,0,1,1,2,4,7,13,24,...]
```

Write a function that takes as its argument a signature and an "N" and return the
first n elements (including the signature)
