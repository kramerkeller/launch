# Tic Tac Toe
#
# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square
# 4. Display the updated board state
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = 'Computer'

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, seperator = ', ', final_seperator = 'or')
    return '' if array.size == 0
    return array.first if array.size == 1
    string = array.join(seperator)
    string[-2] = " #{final_seperator} "
    string
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're X. Computer is 0."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_winning_square_for(marker, line, board)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_winning_square_for(COMPUTER_MARKER, line, brd)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_winning_square_for(PLAYER_MARKER, line, brd)
      break if square
    end
  end

  square = 5 if !square && brd[5] == " "

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

####################################

def place_piece!(current_player, board)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 'Computer' ? 'Player' : 'Computer'
end

# new game best of 5
loop do
  score = {'Player' => 0, 'Computer' => 0}
  next_player = FIRST_PLAYER

  # new round
  loop do
    current_player = next_player
    board = initialize_board

    loop do
      display_board(board)
      score.each { |k, v| prompt "#{k}: #{v} "}
      place_piece!(current_player, board)
      break if someone_won?(board) || board_full?(board)
      current_player = alternate_player(current_player)
    end

    display_board(board)

    if someone_won?(board)
      winner = detect_winner(board)
      prompt "#{winner} won!"
      score[winner] += 1
    else
      prompt "It's a tie!"
    end
    score.each { |k, v| puts "#{k}: #{v} "}
    break if score.has_value?(5)

    next_player = alternate_player(next_player)
  end

  prompt "Wanna play a again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
