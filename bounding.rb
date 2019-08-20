n,x = gets.split(" ").map(&:to_i)
length = gets.split(" ").map(&:to_i)
# ball = [0]
# a = 0
# ball = l.map{ |l| l += a }
a = 0
bounds = length.map do |l|
    a += l
    l = a
end
print bounds.count{ |bound| bound <= x } + 1