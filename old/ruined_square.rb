a,b,c,d= gets.split(" ").map(&:to_i)
diff_x = c - a
diff_y = d - b
e = c - diff_y
f = d + diff_x
g = e - diff_x
h = f - diff_y
puts "#{e} #{f} #{g} #{h}"