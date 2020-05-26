require 'yaml'

MESSAGES = YAML.load_file('ttt.yaml')

WHO_GOES_FIRST = 'Choose'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def messages(message)
  prompt(MESSAGES[message])
  puts ""
end

def clear
  system 'clear' || 'cls'
end

def choose_first_player
  messages('who_go_first?')
  loop do
    answer = gets.chomp.downcase
    return 'Player' if answer == 'p'
    return 'Computer' if answer == 'c'
    messages('invalid_choice')
    break if answer == 'p' || answer == 'c'
  end
end

def default_first_player
  if WHO_GOES_FIRST == 'Choose'
    choose_first_player
  elsif WHO_GOES_FIRST == 'Player'
    'Player'
  else
    'Computer'
  end
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_marker!(board)
  else
    computer_places_marker!(board)
  end
end

def alternate_player(current_player)
  if current_player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def joinor(array, delimiter=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.join
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(board)
  clear
  puts "Player is #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def player_places_marker!(board)
  square = ''
  loop do
    prompt "Please choose a square: #{joinor(empty_squares(board))}"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  board[square] = PLAYER_MARKER
end

def computer_strategy(board, marker)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, marker)
    break if square
  end
  square
end

def pick_square_five(board)
  return 5 if board[5] == INITIAL_MARKER
end

def random_empty_square(board)
  empty_squares(board).sample
end

def computer_places_marker!(board)
  computer_offense = computer_strategy(board, COMPUTER_MARKER)
  computer_defense = computer_strategy(board, PLAYER_MARKER)

  square = if computer_offense
             computer_offense
           elsif computer_defense
             computer_defense
           elsif pick_square_five(board)
             pick_square_five(board)
           else
             random_empty_square(board)
           end

  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_squares(board).empty?
end

def winner?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_winner(board, winner)
  if winner?(board)
    prompt "#{winner} won!"
    puts ''
  else
    messages('tie')
  end
end

def update_score(winner, score)
  if winner == 'Player'
    score[:player] += 1
  elsif winner == 'Computer'
    score[:computer] += 1
  else
    score
  end
end

def display_score(score)
  prompt "The score is: Player - #{score[:player]} : " \
  "Computer - #{score[:computer]}"
  puts ""
end

def grand_winner?(score)
  score[:player] == 5 || score[:computer] == 5
end

def display_grand_winner(score)
  if score[:player] == 5
    messages('player_grand_winner')
  elsif score[:computer] == 5
    messages('computer_grand_winner')
  else
    messages('quit_early')
  end
end

def find_at_risk_square(line, board, marker)
  return nil unless at_risk_square?(line, board, marker)

  board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
end

def at_risk_square?(line, board, marker)
  board.values_at(line[0], line[1], line[2]).count(marker) == 2
end

def play_again?(message)
  answer = nil
  loop do
    messages(message)
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    messages('invalid_choice')
  end
  answer == 'n' || answer == 'no'
end

# start of game
clear
messages('welcome')
messages('rules')
loop do
  score = { player: 0, computer: 0 }

  loop do
    board = initalize_board
    current_player = default_first_player

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if winner?(board) || board_full?(board)
    end

    display_board(board)
    winner = detect_winner(board)
    display_winner(board, winner)
    update_score(winner, score)
    display_score(score)

    break if grand_winner?(score)
    break if play_again?('continue?')
  end

  display_grand_winner(score)
  break if play_again?('another_match?')
  clear
end

clear
messages('goodbye')
