n = gets.to_i
v = gets.strip.split(" ").map(&:to_f).sort
(n - 1).times do
    item1 = v[0]
    item2 = v[1]
    v.shift(2)
    v.unshift((item1 + item2) / 2)
end
print v.inject(:+)