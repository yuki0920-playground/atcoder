n = gets.to_i
points = gets.split(" ").map(&:to_i)
count = 0
points.each_cons(3) do |i|
    count += 1 if i[1] == i.sort[1]
end
print count