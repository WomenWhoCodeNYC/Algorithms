# Is Tree Symmetric

## Problem
Given a binary tree t, determine whether it is symmetric around its center, i.e. each side mirrors the other.

## Example
For

```
t = {
    "value": 1,
    "left": {
        "value": 2,
        "left": {
            "value": 3,
            "left": null,
            "right": null
        },
        "right": {
            "value": 4,
            "left": null,
            "right": null
        }
    },
    "right": {
        "value": 2,
        "left": {
            "value": 4,
            "left": null,
            "right": null
        },
        "right": {
            "value": 3,
            "left": null,
            "right": null
        }
    }
} 
```
the output should be isTreeSymmetric(t) = true.
```
    1
   / \
  2   2
 / \ / \
3  4 4  3
```
For

```
t = {
    "value": 1,
    "left": {
        "value": 2,
        "left": null,
        "right": {
            "value": 3,
            "left": null,
            "right": null
        }
    },
    "right": {
        "value": 2,
        "left": null,
        "right": {
            "value": 3,
            "left": null,
            "right": null
        }
    }
}
```
the output should be isTreeSymmetric(t) = false.

Here's what the tree in this example looks like:
```
    1
   / \
  2   2
   \   \
   3    3
```
As you can see, it is not symmetric

[Source](https://app.codesignal.com/interview-practice/task/tXN6wQsTknDT6bNrf)
