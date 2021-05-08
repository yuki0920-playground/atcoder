_n = gets
input = gets.chomp.split(' ').map(&:to_i)
numbers = input.group_by{|num| num % 200}.values

count = numbers.map { |number|
  next if number.length < 2

  (number.length * (number.length - 1))/2
}.flatten.compact.sum

puts count
