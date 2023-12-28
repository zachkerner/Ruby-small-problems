def prompt(message)
  puts "=> #{message}"
end

def initialize_deck()
  deck = []
  one_suit = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
  4.times { |i| deck.push(one_suit) }
  deck.flatten.shuffle
end

def deal(person, deck)
  person.push(deck.pop, deck.pop)
  person
end

def total(cards)
  total = 0

  cards.each do |card|
    if [2,3,4,5,6,7,8,9,10].include?(card)
      total += card
    elsif ["Jack", "Queen", "King"].include?(card)
      total += 10
    elsif card == "Ace" && total <= 10
      total += 11
    elsif card == "Ace" && total > 10
      total += 1
    end
  end
  total
end

def busted(cards)
  busted = false
  if total(cards) > 21
    busted = true
  end
  busted
end

def twenty_one(cards)
  twenty_one = false
  if total(cards) == 21
    twenty_one = true
  end
  twenty_one
end


prompt("Welcome to Twenty One.")

#Initialize deck and players
deck = initialize_deck
player_cards = []
dealer_cards = []

#First deal
deal(player_cards, deck)
deal(dealer_cards, deck)

prompt("Player has #{player_cards[0]} and #{player_cards[1]} for a total of #{total(player_cards)}.")
prompt("Dealer has #{dealer_cards[0]} and a mystery card.")


loop do
  answer = 'nil'
  loop do
  prompt("Hit or stay? (h/s)")
  answer = gets.chomp
  break if ['h','s'].include?(answer)
  prompt("Invalid answer.")
  end

  if answer == 'h'
    player_cards << deck.pop
    prompt("Your cards are #{player_cards} for a total of #{total(player_cards)}.")
  end

  break if answer == 's' || busted(player_cards) || twenty_one(player_cards)
end

if busted(player_cards)
  prompt("Player busts; dealer wins!")
  exit
elsif twenty_one(player_cards)
  prompt("Player has 21; player wins!")
  exit
end

prompt("Player stays!")
prompt("Dealer reveals his second card!")
prompt("Dealer has #{dealer_cards[0]} and #{dealer_cards[1]} for a total of #{total(dealer_cards)}.")
prompt("16 and under dealer hits. 17 and over dealer stays!")

while (total(dealer_cards) < 17)
  prompt("Dealer hits.")
  dealer_cards << deck.pop
  prompt("Dealer has #{dealer_cards} for a total of #{total(dealer_cards)}.")
end

if total(dealer_cards) > 21 #dealer busts
  prompt("Dealer busts. Player wins.")
elsif total(dealer_cards) > total(player_cards) #neither busts, dealer wins
  prompt("Dealer has #{total(dealer_cards)}. Player has #{total(player_cards)}. Dealer wins.")
elsif total(player_cards) > total(dealer_cards) #neither busts, players wins
  prompt("Player has #{total(player_cards)}. Dealer has #{total(dealer_cards)}. Player wins.")
else §
  prompt("Player has #{total(player_cards)}. Dealer has #{total(dealer_cards)}. Its a tie!")
end








