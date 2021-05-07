a = gets.to_i
b = gets.to_i
c = gets.to_i
sum = gets.to_i

count = 0
(0..a).each do |x|
  (0..b).each do |y|
    (0..c).each do |z|
      count += 1 if 500 * x + 100 * y + 50 * z == sum
    end
  end
end
puts count
