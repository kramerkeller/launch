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

def rotate90(matrix)
  rows = []
  row_size = matrix[0].size # new row size is old column size
  row_size.times do |row|
    rows[row] =  matrix.map { |old_column| old_column[row] }.reverse
  end
  rows
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
