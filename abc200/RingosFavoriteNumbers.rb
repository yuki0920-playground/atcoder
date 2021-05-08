_n = gets
input = gets.chomp.split(' ').map(&:to_i)
num_groups = input.group_by{|num| num % 200}

count = 0
num_groups.each do |key, numbers|
  next if numbers.size < 2

  count += numbers.combination(2).to_a.count{|num1, num2| (num1 - num2).modulo(200) == 0}
end

puts count
