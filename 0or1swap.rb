_n = gets.to_i
as = gets.strip.split(" ").map(&:to_i)
bs = as.sort
count = 0
as.each_with_index do |a, i|
    count += 1 if a != bs[i]
end
print count <= 2 ? "YES" : "NO"