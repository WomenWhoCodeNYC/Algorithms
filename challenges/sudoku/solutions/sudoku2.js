// accepts 9X9 grid
function isSolved(grid){
  var grid_length = grid.length;

  //odd grid lengths
  var target = grid_length * Math.ceil(grid_length / 2);

  var sqSum = new Array(grid_length).fill(0);
  var colSum = new Array(grid_length).fill(0);

  for (var row = 0; row < grid.length; row ++) {
    var rowSum = 0;
    for (var col = 0; col < grid.length; col ++){
      rowSum += grid[row][col];
      colSum[col] += grid[row][col];
      sqSum[quad(row, col)] += grid[row][col];
    }

    if(rowSum !== target){
      return false;
    }
  }

//both sqSum & colSum are length 9
  for (var i = 0; i < grid_length; i++){

      if (colSum[i] !== target || sqSum[i] !== target){
        return false;
      }
  }

  return true;

}

//returns quadrant for 3x3 grid subsections
//accepts [row, col]
function quad(row, col){
  grid_size = 3;
  quad_limits = [
    [grid_size, grid_size], [grid_size, grid_size * 2 ], [grid_size, grid_size * 3],
    [grid_size * 2, grid_size], [grid_size * 2, grid_size * 2 ], [grid_size * 2, grid_size * 3],
    [grid_size * 3, grid_size], [grid_size * 3, grid_size * 2 ], [grid_size * 3, grid_size * 3]
];

  for (var i = 0; i < quad_limits.length; i++){
    if (row < quad_limits[i][0] && col < quad_limits[i][1]){
      return i;
    }
  }
}


function sudokuChecker(grid) {
  isSolved(grid) ? console.log("Finished") : console.log("Try again!");
 }

 var valid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 2, 1, 9, 5, 3, 4, 8],
              [1, 9, 8, 3, 4, 2, 5, 6, 7],
              [8, 5, 9, 7, 6, 1, 4, 2, 3],
              [4, 2, 6, 8, 5, 3, 7, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 7, 9]]; // should return "Finished!"

 var invalid = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 2, 1, 9, 0, 3, 4, 9],
              [1, 0, 0, 3, 4, 2, 5, 6, 0],
              [8, 5, 9, 7, 6, 1, 0, 2, 0],
              [4, 2, 6, 8, 5, 3, 7, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 0, 1, 5, 3, 7, 2, 1, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 0, 0, 4, 8, 1, 1, 7, 9]];// "Try again!"

sudokuChecker(valid);
sudokuChecker(invalid);
