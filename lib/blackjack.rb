def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  type = get_user_input
  if type == "s"
    return num
  elsif type == "h"
    return num + deal_card
  else 
    invalid_command
  end
end

def invalid_command
 puts "Please enter a valid command"
 prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  display_card_total
  while hit? > 21
    end_game
  end
end
    
