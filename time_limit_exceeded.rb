n,limit = gets.split(" ").map(&:to_i)
min = 1001
n.times do
    cost,time = gets.split(" ").map(&:to_i)
    min = cost if time <= limit && cost < min
end
puts min == 1001 ? 'TLE' : min