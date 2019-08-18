n = gets.to_i
v = gets.strip.split(" ").map(&:to_f).sort
(n - 1).times do
    item1 = v.shift
    item2 = v.shift
    v.unshift((item1 + item2) / 2)
end
print v.inject(:+)