n = gets.to_i
h = gets.split(" ").map(&:to_i)
count = 1
(1...n).each do |i|
    count += 1 if h[i] >= h[0...i].max
end
print count