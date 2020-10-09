a, b, c, d = gets.chomp.split(' ').map(&:to_i)

number = [a * c, a * d, b * c, b * d].max

puts number
