#Problem:
Given a list of integers and a single sum value, return the first two values (starting from the left) in order of appearance that add up to the sum.

#Examples
```
sum_pairs([11, 3, 7, 5],         10)
//             ^--^      3 + 7 = 10
// should return [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
//         ^-----^         4 + 2 = 6, indices: 0, 2 *
//            ^-----^      3 + 3 = 6, indices: 1, 3
//               ^-----^   2 + 4 = 6, indices: 2, 4
// * entire pair is earlier, and therefore is the correct answer
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
// there are no pairs of values that can be added to produce 2.
// returns null/none/nil/undefined (based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
//             ^-----------^   5 + 5 = 10, indices: 1, 5
//                   ^--^      3 + 7 = 10, indices: 3, 4 *
// * entire pair is earlier, and therefore this the correct answer
//should return [3, 7]
```

#Notes
 - Negative numbers and duplicate numbers can and will appear.
 - NOTE: Efficiency matters. There can be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out for large inputs.


