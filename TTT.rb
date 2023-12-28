EMPTY_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

def prompt(message)
  puts "=> #{message}"
end

def display_board(board)
  system "clear"
  puts " You are X. Computer is O." 
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select{|k| board[k] == EMPTY_MARKER}
end

def joinor(array, separator = ', ', and_option = false)
  output = ""
  array.each_with_index do |elem, index|
    if index == array.size - 2 && !and_option
      output += elem.to_s << " or "
    elsif index == array.size - 2 && and_option
      output += elem.to_s << " and "
    else
    output += elem.to_s << separator;
    end
  end
  output.slice(0...output.size - 2);
end

def player_turn!(board)
  square = ""
  loop do
    prompt("Select a blank square #{joinor(empty_squares(board))}")
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt("Sorry, not a valid choice.")
  end
  board[square] = "X"
end

def computer_defense(board)
  square = nil
  danger_lines = [[1,2,3], [1,3,2], [2,3,1],
                  [4,5,6], [4,6,5], [5,6,4],
                  [7,8,9], [7,9,8], [8,9,7],
                  [1,4,7], [1,7,4], [4,7,1],
                  [2,5,8], [2,8,5], [5,8,2],
                  [3,6,9], [3,9,6], [6,9,3],
                  [1,5,9], [1,9,5], [5,9,1],
                  [3,5,7], [3,7,5], [5,7,3]];
  danger_lines.each do |sub_array|
    if board[sub_array[0]] == PLAYER_MARKER && board[sub_array[1]] == PLAYER_MARKER && empty_squares(board).include?(sub_array[2])
      square = sub_array[2]
    end
  end
  square ? square : false
end 

def computer_offense(board)
  square = nil
  winning_lines = [[1,2,3], [1,3,2], [2,3,1],
                  [4,5,6], [4,6,5], [5,6,4],
                  [7,8,9], [7,9,8], [8,9,7],
                  [1,4,7], [1,7,4], [4,7,1],
                  [2,5,8], [2,8,5], [5,8,2],
                  [3,6,9], [3,9,6], [6,9,3],
                  [1,5,9], [1,9,5], [5,9,1],
                  [3,5,7], [3,7,5], [5,7,3]]
  winning_lines.each do |sub_array|
    if board[sub_array[0]] == COMPUTER_MARKER && board[sub_array[1]] == COMPUTER_MARKER && empty_squares(board).include?(sub_array[2])
      square = sub_array[2]
    end
  end
  square ? square : false
end

def computer_turn!(board)
  if empty_squares(board).include?(5)
    board[5] = COMPUTER_MARKER
  elsif computer_offense(board) 
    board[computer_offense(board)] = COMPUTER_MARKER
  elsif computer_defense(board)
     board[computer_defense(board)] = COMPUTER_MARKER
  else
    board[empty_squares(board).sample] = COMPUTER_MARKER
  end
end

def board_full?(board)
  empty_squares(board) == []
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  winning_lines = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  winning_lines.each do |line|
    if board[line[0]] == PLAYER_MARKER && 
      board[line[1]] == PLAYER_MARKER && 
      board[line[2]] == PLAYER_MARKER
      return "Player"
    elsif board[line[0]] == COMPUTER_MARKER && 
      board[line[1]] ==COMPUTER_MARKER && 
      board[line[2]] == COMPUTER_MARKER
      return "Computer"
    end
  end
  nil
end

SCORE = {
  player: 0,
  computer: 0,
  games: 0,
}

def update_player_score()
  SCORE[:player] += 1;
end

def update_computer_score()
  SCORE[:computer] += 1;
end

def update_games_count()
  SCORE[:games] += 1
end

def display_score()
  prompt("Score is player: #{SCORE[:player]}, computer #{SCORE[:computer]}")
  prompt("Game is best of 5.")
end

def detect_match_winner()
  if SCORE[:player] == 3
    return 'Player'
  elsif SCORE[:computer] == 3
    return 'Computer'
  else
    return false
  end
end

##Game loop


loop do

board = initialize_board
display_board(board)

loop do 
  display_board(board)
  player_turn!(board)
  break if someone_won?(board) || board_full?(board)
  computer_turn!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

display_board(board);

if someone_won?(board)
  prompt("#{detect_winner(board)} won!")
  if detect_winner(board) == 'Player'
    update_player_score
    update_games_count
  else 
    update_computer_score
    update_games_count
  end
elsif board_full?(board)
  prompt("Its a tie!")
  update_games_count
end

display_board(board)

display_score

if detect_match_winner
  prompt("#{detect_match_winner} wins after #{SCORE[:games]} games")
  prompt("with a final score of player: #{SCORE[:player]}, computer: #{SCORE[:computer]}.")
  break
end

prompt("Begin new round? (y/n)")
new_round = gets.chomp
break if new_round == 'n'

break if detect_match_winner

end