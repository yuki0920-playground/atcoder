n = gets.chomp.to_i
puts (1..n).map { |_n| gets.chomp.to_i }.group_by{|n|n}.count {|i, nums| nums.size.odd? }
