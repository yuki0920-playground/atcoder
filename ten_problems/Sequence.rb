_n = gets.chomp
nums = gets.chomp.split(' ').map(&:to_i)
first, last = nums[..-2], nums[-1]

if (first.sum < 0 && 0 < last ) || (last < 0 && 0 < first.sum)
  puts 0
  exit
end

puts [first.sum.abs, last].max
