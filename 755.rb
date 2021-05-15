n = gets.chomp
digits = n.size

count = 0
(3..digits).each do |digit|
  each_count = [3, 5, 7].repeated_permutation(digit).each { |nums|
    if(nums.join.to_i <= n.to_i) && (nums.sort.uniq == [3, 5, 7])
      count += 1
    end
  }
end

puts count
