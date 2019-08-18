n = gets.to_i
a = gets.strip.split(" ").map(&:to_f)
m = 1
a.each{|a| m = a * m }
l = a.map{ |a| m / a }.inject(:+)
print (m / l)