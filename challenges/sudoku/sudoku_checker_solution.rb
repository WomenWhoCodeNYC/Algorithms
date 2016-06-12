def make_board(str)
  str.chars.each_slice(9).to_a.map{|row| row.map!{|el| el.match(/\d/) ? el.to_i : el}}
end

def square_transpose(board)
  squares = []
  i = 0
  while i < board.length
    squares[i]     = board[i][0..2] + board[i + 1][0..2] + board[i + 2][0..2]
    squares[i + 1] = board[i][3..5] + board[i + 1][3..5] + board[i + 2][3..5]
    squares[i + 2] = board[i][6..8] + board[i + 1][6..8] + board[i + 2][6..8]
    i += 3
  end
  squares
end

def solved?(board)
  board.all?{|row| row.sort == (1..9).to_a} &&
  board.transpose.all?{|col| col.sort == (1..9).to_a} &&
  square_transpose(board).all?{|sq| sq.sort == (1..9).to_a}
end

def sudoku_solver(board)
  board = make_board(board) if board.is_a?(String)
  return "Try again!" if board.any?{|row| row.any?{|el| !el.is_a?(Fixnum)}}

  solved?(board) ? "Finished!" : "Try again!"
end


# not sure what kind of board this will recieve, but assumed it would be either a
# nested array or a string.

solved_string = "295743861431865927876192543387459216612387495549216738763524189928671354154938672"
p sudoku_solver(solved_string)
# "Finished!"

wrong_string = "295744864431864927876192543387459216612387495549216738763524189928671354154938672"
p sudoku_solver(wrong_string)
# "Try again!"

unfinished_string = "295-43861431865927876192-4-38745921661-3874955492-673876352-189928671-54154938672"
p sudoku_solver(unfinished_string)
# "Try again!"
