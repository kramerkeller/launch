=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

require 'pry'

SUITS = ['H', 'D', 'S', 'C']
FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

# returns a new deck to be used for each game
def new_deck
  deck = []
  SUITS.each do |suit|
    FACES.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

# returns single card from cards remaining in deck
def deal_card!(deck)
  deck.delete(deck.sample)
end

# returns an array of 2 cards representing the initial "hand" from cards
# remaining in deck
def new_hand(deck)
  [deal_card!(deck), deal_card!(deck)]
end

# returns values from a given hand
def hand_value(hand)
  total = 0
  ace_count = 0

  # Assign totals for all but aces
  hand.each do |card|
    case card[1]
    when 'A' then ace_count += 1
    when 'K', 'Q', 'J' then total += 10
    else total += card[1].to_i
    end
  end

  while ace_count > 0
    total += (total + 11) <= 21 ? 11 : 1
    ace_count -= 1
  end

  total
end

########### GAME 21 ###########
loop do
  # The start of a new game
  system 'clear'
  puts "Welcome to 21"
  puts

  deck = new_deck

  dealer_hand = new_hand(deck)
  puts "Dealer shows: #{dealer_hand[0]} and an unknown card"
  puts

  player_hand = new_hand(deck)
  puts "Your cards are: #{player_hand}"
  puts

  # player turn
  while hand_value(player_hand) <= 21
    puts "Hit or Stay?"
    answer = gets.chomp
    puts
    break if answer.downcase[0] == 's'
    player_hand << deal_card!(deck)
    puts "Your cards are: #{player_hand}"
    puts
  end

  if hand_value(player_hand) > 21
    puts "PLAYER BUSTED! Dealer wins"
  else
    # dealers turn
    while hand_value(dealer_hand) <= 17
      dealer_hand << deal_card!(deck)
    end

    puts "Dealer shows: #{dealer_hand}"
    puts "For a total of #{hand_value(dealer_hand)}"
    puts

    if hand_value(dealer_hand) > 21
      puts "DEALER BUSTED! Player wins!"
    elsif hand_value(dealer_hand) < hand_value(player_hand)
      puts "Player wins!"
    else
      puts "Dealer wins!"
    end
  end

  puts
  puts "Play again? (y/n)"
  answer = gets.chomp
  puts
  break if answer == 'n'
end

puts "Thanks for playing 21!"
