n = gets.to_i
prices = []
n.times do
    prices << gets.chomp.to_i
end
prices.sort!
prices[-1] /= 2
print prices.inject(:+)