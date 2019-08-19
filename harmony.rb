a,b = gets.split(" ").map(&:to_i)
print (a - b).abs.even? ? (a + b)/2 : "IMPOSSIBLE"