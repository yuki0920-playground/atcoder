n,x = gets.split(" ").map(&:to_i)
l = gets.split(" ").map(&:to_i)
count = 1
d = 0
(0...n).each do |i|
    d += l[i]
    if d > x
        break
    end
    count += 1
end
print count