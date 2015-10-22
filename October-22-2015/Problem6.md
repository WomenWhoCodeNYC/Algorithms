# Get Nth Leaf

Let's say we have the following tree:
```
          A
      B        C
    D E F    G   H
            J K
```

Our goal is to write a method `get_nth_leaf` that finds the nth leaf in the tree when performing an in-order depth-first traversal (see https://en.wikipedia.org/wiki/Tree_traversal for more information).

## Examples
```
get_nth_leaf(tree, 0)
=> D

get_nth_leaf(tree, 1)
=> E

get_nth_leaf(tree, 3)
=> J

get_nth_leaf(tree, 5)
=> nil
```

## Assumptions
1. The node object has a function that returns its direct children in an ordered fashion.
2. `n` is 0-indexed.

## Notes
1. To make the problem more challenging, define the node interface as well.
2. Optimal runtime is linear. If you have a quadratic solution, try to refine it to linear. 
3. If you return an array containing all leaves and then index into it., try to use less memory.
4. There are decent recursive solutions, but the iterative solution is unintuitively cleaner.
5. How would you test this? 
(Think about all cases- edge cases, negatives, etc.)




