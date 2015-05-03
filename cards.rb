def deal(card_array)
  poker_hand = []
  card_array = card_array.shuffle
  poker_hand = card_array.first(5)
end

deck = ["A", "K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2]
# deal the first hand
my_hand = deal(deck)
puts "your first hand is: " + my_hand.inspect
# deal another hand
my_hand = deal(deck)
puts "your second hand is: " + my_hand.inspect