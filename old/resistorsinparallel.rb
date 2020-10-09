n = gets.to_i
as = gets.strip.split(" ").map(&:to_f)
m = 0
as.each do |a|
    m += 1/a
end
print 1/m