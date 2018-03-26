# Transpose 3x3

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  new_matrix = []
  (0..2).each do |x|
    row = (0..2).map { |y| matrix[y][x] }
    new_matrix << row
  end
  new_matrix
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
