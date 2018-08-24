
def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def move
  puts " hit or stick"
  user_move = ''
  until user_move == "hit" || user_move == "stick"
    user_move = gets.chomp
  end
  user_move
end

def score(list_of_cards)
  cards_to_number = {
    two: 2,
    three:  3,
    four:  4,
    five:  5,
    six:  6,
    seven:  7,
    eight:  8,
    nine:  9,
    ten:  10,
    jack:  10,
    queen: 10,
    king:  10,
    ace:  11
  }
  sum = 0
  list_of_cards.each { |card| sum += cards_to_number[card.to_sym] }
  sum
end

def run_game
  list_of_cards = []
  input = move
  while true do
    if input == "hit"
      list_of_cards.push(random_card)
      puts "Score so far: #{score(list_of_cards)}"
      input = move
    elsif input == "stick"
      puts "You scored: #{score(list_of_cards)}"
      break
    end
    if score(list_of_cards) > 20
      puts "You busted with: #{score(list_of_cards)}"
      break
    end
  end
end
