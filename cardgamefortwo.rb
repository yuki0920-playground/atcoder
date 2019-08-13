number = gets.to_i
cards = gets.strip.split(" ").map(&:to_i).sort.reverse
a_cards = cards.each_slice(2).map(&:first)
print a_cards.inject(&:+) * 2 - cards.inject(&:+)