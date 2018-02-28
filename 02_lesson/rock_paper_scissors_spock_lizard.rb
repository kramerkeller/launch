# User and computer can select rock papers scissors
# Compare choices
# If tie, say tie, redo
# If not, say who wins
# ask if they want to play again

# CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
require 'pry'

CHOICES = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors', 'sp' => 'spock',
            'l' => 'lizard' }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def ask(message)
  prompt(message)
  gets.chomp
end

# rock beats scissors and lizards
# scissors beats paper and lizards
# paper beats rock and spock
# spock beats rock and scissors
# lizard beats spock and paper

def win?(user1, user2)
  (user1 == 'rock' && (user2 == 'scissors' || user2 == 'lizard')) ||
    (user1 == 'scissors' && (user2 == 'paper' || user2 == 'lizard')) ||
    (user1 == 'paper' && (user2 == 'rock' || user2 == 'spock')) ||
    (user1 == 'spock' && (user2 == 'rock' || user2 == 'scissors')) ||
    (user1 == 'lizard' && (user2 == 'spock' || user2 == 'paper'))
end

puts
puts
prompt("----------------------------------------------------------")
prompt("Welcome to Rock, Paper, Scissors, Spock Lizard!")
prompt("You will be playing against Art Intelligence, Good luck!")
prompt("----------------------------------------------------------")

loop do
  user_count = 0
  comp_count = 0
  round_count = 1

  loop do
    user_choice = ''
    choices = CHOICES.map { |k, v| "#{k} = #{v}" }

    prompt("*********************************************************")
    prompt("Round #{round_count}")
    loop do
      user_choice = ask "Choose one: #{choices.join(', ')}"
      break if CHOICES.key?(user_choice)
      prompt("That's not a valid choice")
    end

    user_choice = CHOICES.fetch(user_choice)
    comp_choice = CHOICES.values.sample

    prompt("You chose: #{user_choice}")
    prompt("Art chose: #{comp_choice}")

    if win?(user_choice, comp_choice)
      prompt("You win!")
      user_count += 1
    elsif win?(comp_choice, user_choice)
      prompt("Art wins!")
      comp_count += 1
    else
      prompt("Arg!... It's a tie!")
    end
    round_count += 1

    prompt("Your Score: #{user_count}")
    prompt("Art's Score: #{comp_count}")
    prompt("Round #{round_count}...")
    puts

    break if user_count >= 5 || comp_count >= 5
  end
  prompt("*********************************************************")
  prompt("You are the grand prize winner!") if user_count >= 5
  prompt("You LOSE! Art is the grand prize winner!") if comp_count >= 5
  break unless ask("Play again? (y/n)").downcase == 'y'
end
