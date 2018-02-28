# User and computer can select rock papers scissors
# Compare choices
# If tie, say tie, redo
# If not, say who wins
# ask if they want to play again

CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def ask(message)
  prompt(message)
  gets.chomp
end

def win?(user1, user2)
  (user1 == 'rock' && user2 == 'scissors') ||
    (user1 == 'scissors' && user2 == 'paper') ||
    (user1 == 'paper' && user2 == 'rock')
end

def show_winner(user_choice, comp_choice)
  if win?(user_choice, comp_choice)
    "You win!"
  elsif win?(comp_choice, user_choice)
    "Art wins!"
  else
    "Arg!... It's a tie!"
  end
end

prompt("Welcome to Rock, Paper, Scissors!")
prompt("You will be playing against Art Intelligence, Good luck!")

loop do
  user_choice = ''

  loop do
    user_choice = ask "Choose one: #{CHOICES.join(', ')}"
    break if CHOICES.include?(user_choice)
    prompt("That's not a valid choice")
  end

  comp_choice = CHOICES.sample

  prompt("You chose: #{user_choice}")
  prompt("Art chose: #{comp_choice}")

  prompt(show_winner(user_choice, comp_choice))

  break unless ask("Play again? (y/n)").downcase == 'y'
end
