n,d = gets.split(" ").map(&:to_i)
x1 = gets.split(" ").map(&:to_i)
x2 = gets.split(" ").map(&:to_i)
x3 = gets.split(" ").map(&:to_i)

answer1 = 0
(0..(d-1)).each do |e|
    answer1 += (x1[e] - x2[e]) ** 2
end
print answer1

answer2 = 0
(0..(d-1)).each do |e|
    answer2 += (x2[e] - x3[e]) ** 2
end
print answer2

answer3 = 0
(0..(d-1)).each do |e|
    answer3 += (x3[e] - x1[e]) ** 2
end
print answer3