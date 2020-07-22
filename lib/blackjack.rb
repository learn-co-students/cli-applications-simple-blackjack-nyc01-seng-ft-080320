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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  prompt_user
  next_move = get_user_input
  if next_move == 'h'
    current_total += deal_card
  end
  if next_move != 's' && next_move != 'h'
    invalid_command
    prompt_user
    get_user_input
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  new_total = card_total
  while new_total <= 21
    if new_total === card_total
      new_total = hit?(card_total)  
    end
    display_card_total(new_total)
    card_total = new_total
  end
  end_game(new_total)
end
    
