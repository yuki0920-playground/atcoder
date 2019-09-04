a,b,k = gets.split(" ").map(&:to_i)

count = 0
(1..a).each do |i|
    count += 1 if a % i == 0 && b % i == 0
    if count == k
        print i
        break
    end
end