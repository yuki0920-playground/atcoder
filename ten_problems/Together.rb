_n = gets.chomp
nums = gets.chomp.split(' ').map(&:to_i)
puts nums.each_with_object({}) {|num, res|
  res[num-1].nil? ? res[num-1] = 1  : res[num-1] += 1
  res[num].nil? ? res[num] = 1  : res[num] += 1
  res[num+1].nil? ? res[num+1] = 1  : res[num+1] += 1
}.values.max
