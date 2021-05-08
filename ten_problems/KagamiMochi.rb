n = gets.chomp.to_i
numbers = (1..n).map { |_n| gets.chomp.to_i }
puts numbers.uniq.count
