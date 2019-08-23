n = gets.to_i
v = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
profits = [v,c].transpose.map{ |n| n.inject(:-) }
               .select{ |profit| profit > 0 }.inject(:+)
print profits