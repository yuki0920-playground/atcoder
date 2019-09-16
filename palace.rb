n = gets.to_i
t,a = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)
ans = 0
h.each_with_index{ |height, i|
    ans = i if (t - height * 0.006 - a).abs < (t - h[ans] * 0.006 - a).abs
}
print ans + 1