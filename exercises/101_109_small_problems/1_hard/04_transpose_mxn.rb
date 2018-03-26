# Transpose MxN

require 'pry'

  # determine how many rows and columns are in the given matrix
  # create a new_matrix of the size opposite colums and rows of matrix

  # go to the first 'row' in the matrix (first array)
    # go to the first 'column' of the row (first sub-array)
      # set new_matrix's first columns, first row to the above value
    # set new matrix's second row's first value to the second value of this row

# DRAW THIS OUT ON PAPER FIRST
# UNDERSTAND IN YOUR HEAD FIRST, then code

def transpose(matrix)
  rows = []
  row_size = matrix[0].size # new row size is old column size
  row_size.times do |row|
    rows[row] =  matrix.map { |old_column| old_column[row] }
  end
  rows
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
