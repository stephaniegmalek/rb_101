SUITS = ["\u2663", "\u2662", "\u2661", "\u2660"]
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

MAX_TOTAL = 21
DEALER_STOP = 17

def prompt(msg)
  puts "=> #{msg}"
end

def clear
  system 'clear' || 'cls'
end

def initalize_deck
  SUITS.product(VALUES).shuffle
end

def deal_starting_hands!(hands, deck)
  2.times do |_|
    hands[:player][:cards] << deck.pop
    total(hands[:player])
    hands[:dealer][:cards] << deck.pop
    total(hands[:dealer])
  end
end

def total(hand)
  values = hand[:cards].map { |card| card[1] }
  sum = 0
  values.each do |value|
    sum = if value == 'A'
            sum + 11
          elsif value.to_i == 0
            sum + 10
          else
            sum + value.to_i
          end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  hand[:total] = sum
end

def card_display(card)
  " #{card[1]}#{card[0]} "
end

def hand_display(hand)
  hand.reduce('') { |disp, card| disp + card_display(card) }
end

def hidden_display(hand)
  " #{card_display(hand[1])} ?? "
end

def display_game_start
  clear
  prompt "Welcome to Twenty-One!"
  prompt "First to get as close to 21 as possible, without going over, wins!"
  prompt "Whoever wins 5 hands wins the match."
  prompt "Press enter to begin."
  gets.chomp
end

def display_dealer_hand(hands, hide)
  prompt "Dealer has:"
  if hide
    prompt hidden_display(hands[:dealer][:cards])
  else
    prompt hand_display(hands[:dealer][:cards])
  end
end

def display_player_hand(hands)
  prompt "You have:"
  prompt hand_display(hands[:player][:cards])
end

def display_total(hands, hide_dealer)
  prompt "Totals:"
  prompt(hide_dealer ? "Dealer: ??" : "Dealer: #{hands[:dealer][:total]}")
  prompt "Player: #{hands[:player][:total]}"
end

def display_game(hands, hide_dealer)
  display_dealer_hand(hands, hide_dealer)
  display_player_hand(hands)
  display_total(hands, hide_dealer)
end

def player_hits(hands, deck)
  hands[:player][:cards] << deck.pop
  prompt "You chose to hit!"
  display_player_hand(hands)
  total(hands[:player])
  prompt "Your total is now: #{hands[:player][:total]}"
end

def player_turn!(hands, deck)
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    player_hits(hands, deck) if player_turn == 'h'

    break if player_turn == 's' || busted?(hands[:player])
  end
end

def dealer_hits(hands, deck)
  hands[:dealer][:cards] << deck.pop
end

def dealer_turn!(hands, deck)
  prompt "Dealer turn..."
  loop do
    hands[:dealer][:total] < DEALER_STOP ? dealer_hits(hands, deck) : break
    prompt "Dealer hits!"
    total(hands[:dealer])
    display_dealer_hand(hands, false)
  end
end

def busted?(hand)
  hand[:total] > MAX_TOTAL
end

def detect_result(hands)
  if hands[:player][:total] > MAX_TOTAL
    :player_busted
  elsif hands[:dealer][:total] > MAX_TOTAL
    :dealer_busted
  elsif hands[:dealer][:total] < hands[:player][:total]
    :player
  elsif hands[:player][:total] < hands[:dealer][:total]
    :dealer
  else
    :tie
  end
end

def display_results(result)
  case result
  when :player_busted then prompt "You busted! Dealer wins!"
  when :dealer_busted then prompt "Dealer busted! You win!"
  when :player then prompt "You win!"
  when :dealer then prompt "Dealer wins!"
  when :tie then prompt "It's a tie!"
  end
end

def update_score(result, score)
  case result
  when :player then score[:player] += 1
  when :dealer_busted then score[:player] += 1
  when :dealer then score[:dealer] += 1
  when :player_busted then score[:dealer] += 1
  else
    score
  end
end

def display_score(score)
  prompt "The score is: Player - #{score[:player]} : " \
  "Dealer - #{score[:dealer]}"
  puts ""
end

def grand_winner?(score)
  score[:player] == 5 || score[:dealer] == 5
end

def display_grand_winner(score)
  if score[:player] == 5
    prompt "You are the GRAND WINNER!"
  elsif score[:dealer] == 5
    prompt "The Dealer is the Grand Winner, better luck next time."
  else
    prompt "Leaving so soon?"
  end
end

def play_again?
  prompt "Do you want to play again? Y/y or N/n?"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# start
display_game_start
loop do
  score = { player: 0, dealer: 0 }

  loop do
    clear
    deck = initalize_deck
    hands = { player: { cards: [], total: 0 },
              dealer: { cards: [], total: 0 } }

    deal_starting_hands!(hands, deck)
    display_game(hands, true)

    player_turn!(hands, deck)
    result = detect_result(hands)

    if busted?(hands[:player])
      display_results(result)
      update_score(result, score)
      display_score(score)
      break if grand_winner?(score)
      play_again? ? next : break
    else
      prompt "You choose to stay at #{hands[:player][:total]}!"
    end

    dealer_turn!(hands, deck)
    result = detect_result(hands)

    if busted?(hands[:dealer])
      display_results(result)
      update_score(result, score)
      display_score(score)
      break if grand_winner?(score)
      play_again? ? next : break
    else
      prompt "Dealer stays at #{hands[:dealer][:total]}"
    end

    display_results(result)
    update_score(result, score)
    display_score(score)

    break if grand_winner?(score)
    break unless play_again?
  end

  display_grand_winner(score)
  break unless play_again?
end

prompt "Thanks for playing! Goodbye!"
