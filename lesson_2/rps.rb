require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

VALID_CHOICES = {
  'r' => { name: 'rock', beats: ['scissors', 'lizard'] },
  'p' => { name: 'paper', beats: ['rock', 'spock'] },
  's' => { name: 'scissors', beats: ['paper', 'lizard'] },
  'l' => { name: 'lizard', beats: ['spock', 'paper'] },
  'sp' => { name: 'spock', beats: ['scissors', 'rock'] }
}

VALID_ANSWERS = %w(y yes n no)

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
end

def display_choices
  VALID_CHOICES.each { |k, v| puts "=> '#{k}' for #{v[:name]}" }
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice)
end

def answer_valid?(answer)
  VALID_ANSWERS.include?(answer)
end

def retrieve_players_choice
  loop do
    prompt(messages('choose'))
    display_choices

    choice = gets.chomp

    if valid_choice?(choice)
      return choice
    else
      prompt(messages('invalid_choice'))
    end
  end
end

def retrieve_computers_choice
  choice_arr = []
  VALID_CHOICES.each_key { |k| choice_arr << k }
  choice_arr.sample
end

def win?(first, second)
  VALID_CHOICES[first][:beats].include?(VALID_CHOICES[second][:name])
end

def selection_to_display(choice)
  VALID_CHOICES[choice][:name]
end

def display_selections(choice, computer_choice)
  prompt format(messages('selections'),
                players_choice: selection_to_display(choice),
                computer_choice: selection_to_display(computer_choice))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt(messages('win'))
  elsif win?(computer, player)
    prompt(messages('lose'))
  else
    prompt(messages('tie'))
  end
end

def update_and_display_score(choice, computer_choice, score)
  if win?(choice, computer_choice)
    score[:player] += 1
  elsif win?(computer_choice, choice)
    score[:computer] += 1
  end
  prompt format(messages('score_update'),
                player_score: score[:player],
                computer_score: score[:computer])
end

def grand_winner?(score)
  true if score[:player] == 5 || score[:computer] == 5
end

def diplay_winner(score)
  if score[:player] == 5
    prompt(messages('you_win'))
  elsif score[:computer] == 5
    prompt(messages('computer_wins'))
  end
end

def ask_play_again
  loop do
    prompt(messages('play_again'))
    answer = gets.chomp.downcase
    if answer_valid?(answer)
      return answer
    else
      prompt(messages('invalid_answer'))
    end
  end
end

# start of game
system('clear') || system('cls')
prompt(messages('welcome'))

score = {
  player: 0,
  computer: 0
}

# main loop
loop do
  choice = retrieve_players_choice

  computer_choice = retrieve_computers_choice

  display_selections(choice, computer_choice)
  display_results(choice, computer_choice)
  update_and_display_score(choice, computer_choice, score)

  if grand_winner?(score)
    diplay_winner(score)
    break
  end

  answer = ask_play_again
  break unless ['y', 'yes'].include?(answer)
  system('clear') || system('cls')
end

prompt(messages('goodbye'))
