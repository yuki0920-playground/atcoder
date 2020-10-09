n,m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)[1..-1]

(n-1).times do
    x = gets.split(" ").map(&:to_i)[1..-1]
    a &= x
end
puts a.count