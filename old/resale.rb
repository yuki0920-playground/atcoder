n = gets.to_i
v = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
profits = 0
(1..n).each do |i|
    profit = v[i-1] - c[i-1]
    profits += profit if profit > 0
end
print profits