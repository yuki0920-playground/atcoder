_n = gets.to_i
n = gets.split(" ").map(&:to_i)

count = 0
while n.all?{|m| m.even? }
    count += 1
    n = n.map{ |m| m / 2 }
end
print count