n = gets.to_i
a,b = n.divmod(111)
puts b == 0 ? n : (a + 1) * 111