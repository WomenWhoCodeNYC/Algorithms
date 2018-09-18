# Priority queue

A [priority queue](https://en.wikipedia.org/wiki/Priority_queue) is like a [queue](https://en.wikipedia.org/wiki/Queue_(abstract_data_type)), but each item is added with a priority level.

## Problem

Implement a priority queue with at least two operations:
- Insertion.  Adds an element to the queue with a priority (a numeric value).
- Top item removal.  Deletes the element or one of the elements with the current top priority and return it.

Optionally, other operations may be defined, such as peeking (find what current top priority/top element is), merging (combining two priority queues into one), etc.  A typical implementation has O(log n) insertion and extraction time.

To test your implementation, insert a number of elements into the queue, each with some random priority. Then dequeue them sequentially; now the elements should be sorted by priority. You can use the following task/priority items as input data:

```
Priority    Task
  3        Clear drains
  4        Feed dog
  5        Make tea
  1        Solve WWC problem
  2        Tax return
```

[Source](http://rosettacode.org/wiki/Priority_queue)
