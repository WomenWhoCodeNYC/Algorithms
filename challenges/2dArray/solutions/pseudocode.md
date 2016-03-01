Pseudocode
```
function calculateDiagonalSum(inputMatrix) //inputMatrix is a 2-D array
    diagonalSum = 1 //initialize the sum
    for i = 0 to the number of rows in the input matrix
            diagonalSum = diagonalSum * inputMatrix[i][i]
    return diagonalSum

```

Javascript
```javascript
function diagonalSum(matrix) {
    var diagSum = 1;
    for (var i=0; i < matrix.length; i++) {
        diagSum *= matrix[i][i]
    }
    return diagSum;
}
```
Example:
``` javascript
var matrix = [
    [6, 5, 2, 1, 4],
    [7, 2, 8, 4, 7],
    [9, 4, 1, 3, 1],
    [8, 5, 5, 3, 8],
    [6, 3, 9, 2, 5]
];
diagonalSum(matrix) //will return 180 (6 * 2 * 1 * 3 * 5)
```
submitted by [seemaullal](https://github.com/seemaullal)



Ruby
```
def get_diagonal_product(matrix)
  product = matrix.first[0]

  matrix.each_with_index do |row, index|
    product = product * row[index] unless index == 0
  end

  product
end
```

submitted by [Nora](https://github.com/noralincc)
