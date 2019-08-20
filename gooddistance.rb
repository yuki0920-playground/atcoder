n,d = gets.split(" ").map(&:to_i)
points = []
n.times{ points << gets.split.map(&:to_i) }
count = 0
points.combination(2) do |y,z|
    dist = 0
        (0...d).each do |e|
        dist += (y[e] - z[e]) ** 2
    end
    dist = Math.sqrt(dist)
    count += 1 if dist - dist.to_i == 0
end
print count