a,b,c = gets.split(" ").map(&:to_i)
print a - b <= c ? (c - (a - b)) : 0