a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0
(0..a).each do |n|
    (0..b).each do |m|
        (0..c).each do |l|
            count += 1 if (500 * n + 100 * m + 50 * l) == x
        end
    end
end
print count