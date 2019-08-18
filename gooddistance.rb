n,d = gets.split(" ").map(&:to_i)
x1 = gets.split(" ").map(&:to_i)
x2 = gets.split(" ").map(&:to_i)
x3 = gets.split(" ").map(&:to_i)

answer = 0
(0..(d-1)).each do |e|
    answer += (x1[e] - x2[e]) ** 2
end
print answer