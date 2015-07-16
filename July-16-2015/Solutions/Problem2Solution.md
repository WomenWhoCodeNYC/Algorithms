Psuedocode
```
function calculateDiagonalSum(inputMatrix) //inputMatrix is a 2-D array
    diagonalSum = 1 //initialize the sum
    for r = 0 to the number of rows in the input matrix
        for c = 0 to the number of columns in the input matrix
            diagonalSum = diagonalSum * inputMatrix[r][c]
    return diagonalSum

```

