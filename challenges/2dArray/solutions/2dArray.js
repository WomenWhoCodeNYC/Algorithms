// Assumptions & notes:
// 1) The nested arrays are of equal length (same number of elements in each array) to make a square
// 2) The elements in each nested array are numbers
// 3) You're only being asked to return the product of the diagonal of the matrix from the top left to bottom right

const diagonalMatrixProduct = (nestedArr) => {
  let product = 1;
  //as we loop through the 2D array, we move to the next array 'row'
  for (let i = 0; i < nestedArr.length; i++){
    //set the product to the product multiplied by the current row's current number
    product *= nestedArr[i][i]
  }
  return product;
}

// Examples:

// const arr1 = [[2,3], [4,5]];
// const arr2 = [[5,5,5], [5,5,5], [5,5,5]];
// const arr3 = [[1,2,3,4], [5,6,7,8], [9,8,7,6], [5,4,3,2]];
// const arr4 = [[10,9,8,7,6], [22,57,91,5,30], [101,49,56,17,12], [37,44,78,91,9], [12,99,36,82,27]];

// console.log(diagonalMatrixProduct(arr1)) // 2*5 => 10
// console.log(diagonalMatrixProduct(arr2)) // 5*5*5 => 125
// console.log(diagonalMatrixProduct(arr3)) // 1*6*7*2 => 84
// console.log(diagonalMatrixProduct(arr4)) // 10*57*56*91*27 => 78427440

// Submitted by: Deborah Kwon <https://github.com/debkwon>
