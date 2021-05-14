nums = gets.chomp.split('')
n = nums.count

sum = 0

(1 << (n-1)).times do |bit|
  arr = nums.dup

  (n-1).times do |i|
    # 一致する場合に0を追加する
    if (bit & (1 << i)) == 0
      arr[i] = arr[i] + '+'
    end
  end
  arr_sum = eval arr.join

  sum += arr_sum
end

puts sum

# https://blog.cheezenaan.net/bit-bluteforce-in-ruby
