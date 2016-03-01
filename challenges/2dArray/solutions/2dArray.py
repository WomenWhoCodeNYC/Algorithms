"""Level 2
Write a function that takes in a 2-D array that represents a square
matrix and returns the product of the diagonal of the matrix.
For example [ [ 2, 3], [ 4, 5] ] will return 10 (2x5)."""

def diagonalMatrix(inputArray):
    diagonal = 1
    for i in range(0,len(inputArray)):
        diagonal = diagonal * inputArray[i][i]
    return diagonal
print diagonalMatrix([[2,3],[4,5]])


## submitted by [jungjung917](https://github.com/jungjung917)
