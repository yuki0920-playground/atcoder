_n = gets
nums = gets.chomp.split(' ').map(&:to_i)

a = nums.sort.reverse.select.with_index(1) { |num, i| i.odd? }

puts 2 * a.sum - nums.sum
