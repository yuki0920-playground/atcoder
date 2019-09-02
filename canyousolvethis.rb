N,M,C = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
A = []
N.times{ A << gets.split(" ").map(&:to_i) }

count = 0
(0...N).each do |n|
    sum = 0
    A[n].each_with_index do |a, i|
        sum += a * b[i]
    end
    count += 1 if sum + C > 0
end
print count
