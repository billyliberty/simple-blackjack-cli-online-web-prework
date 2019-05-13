def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  method = gets.chomp
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

## def hit?(current_hand)
#  prompt_user
#  input = get_user_input
#  if input == "h"
#    current_hand += deal_card
#  elsif input == "s"
  #  return current_hand
#  else
#    invalid_command
#  end
## end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end

def hit? num
  # code hit? here
  prompt_user
  get_user_input
  if get_user_input == "h"
    num += deal_card
  elsif get_user_input == "s"
   num
  else
    invalid_command
  end
end
