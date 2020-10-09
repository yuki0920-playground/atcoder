as = []
5.times{ as << gets.to_i }
k = gets.to_i
print (as.max - as.min) > k ? ":(" : "Yay!"