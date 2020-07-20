def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 
  # code #get_user_input here
   gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 =deal_card
  total = card_1 + card_2
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total = total
  else
    invalid_command
    hit?(total)
  end
  #   display_card_total(answer)
  # # elsif input = "h"
  #   new_card =deal_card
  #   total = new_card + answer
  #   display_card_total(total)
  # end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
# this is a silly assignment when you enter stand you get asked again, and if you try to fix it you don't pass all the test
