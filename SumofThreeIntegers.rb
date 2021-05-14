k, s = gets.chomp.split(' ').map(&:to_i)

count = 0
(0..k).each do |x|
  (0..k).each do |y|
    z = s - x - y

    count += 1 if 0 <= z && z <= k
  end
end
puts count
