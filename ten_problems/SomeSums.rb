limit, a, b = gets.chomp.split(' ').map(&:to_i)

numbers = (1..limit).select {|num|
  sum = num.to_s.split('').map(&:to_i).sum

  a <= sum && sum <= b
}

puts numbers.sum
