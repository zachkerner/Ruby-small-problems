def prompt(message)
  Kernel.puts "=> #{message}"
end

SCORE = {
  player_score: 0,
  computer_score: 0
}

def score_update_player
  SCORE[:player_score] += 1
end

def score_update_computer
  SCORE[:computer_score] += 1
end

def detect_winner
  SCORE[:player_score] == 3 || SCORE[:computer_score] == 3
end

def scoreboard_tracker
  prompt("User: #{SCORE[:player_score]} Computer: #{SCORE[:computer_score]}")
end

def announce_winner(detect_winner)
  if detect_winner && SCORE[:computer_score] == 3
    prompt("Computer wins the round and the match!")
  elsif detect_winner && SCORE[:player_score] == 3
    prompt("You win the round and the match!")
  end
end

loop do

prompt("Welcome to RB - RPS")

user_choice = ""
loop do
  prompt("Choose one rock (r); paper (p); scissors (s).")
  user_choice = Kernel.gets.chomp.downcase
  break if %w(r p s).include?(user_choice)
end

user_choice_full_name = {"r" => "rock", "p" => "paper", "s" => "scissors"}
user_choice = user_choice_full_name[user_choice]

prompt("Computer choosing...")
computer_choice = ["rock", "paper", "scissors"].sample

prompt("Your choice: #{user_choice}. Computer choice: #{computer_choice}.")

if user_choice == 'rock' && computer_choice == "scissors"
  score_update_player
  prompt("You win!")
elsif user_choice == "paper" && computer_choice == "rock"
  score_update_player
  prompt("You win!")
elsif user_choice == "scissors" && computer_choice == "paper"
  score_update_player
  prompt("You win!")
elsif computer_choice == "rock" && user_choice == "scissors"
  score_update_computer
  prompt("Computer wins!")
elsif computer_choice == "paper" && user_choice == "rock"
  score_update_computer
  prompt("Computer wins!")
elsif computer_choice == "scissors" && user_choice == "paper"
  score_update_computer
  prompt("Computer wins!")
else
  result = "tie"
end


scoreboard_tracker

if detect_winner
  announce_winner(detect_winner)
  break
end

end