def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" 
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  return gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
 sum = deal_card + deal_card
 display_card_total(sum)
 return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  h_or_s = get_user_input
  if h_or_s == "s"
    return card_total 
  elsif h_or_s == 'h'
    card_total += deal_card
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
