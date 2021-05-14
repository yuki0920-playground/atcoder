nums = gets.chomp.split('')
n = nums.count

sum = 0

[0, 1].repeated_permutation(n-1) do |bits|
  arr = nums.dup

  (0..(n-1)).each do |index|
    arr[index] += '+' if bits[index] == 1
  end

  arr_sum = eval arr.join
  print arr
  sum += arr_sum
end

puts sum
