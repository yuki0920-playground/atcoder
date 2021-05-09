_n = gets.chomp
nums = gets.chomp.split(' ').map(&:to_i)
puts nums.uniq.map { |uniq_num|
  nums.partition { |num| uniq_num -1 <= num && num <= uniq_num + 1 }[0]
}.max_by(&:size).size
