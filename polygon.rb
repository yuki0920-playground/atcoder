n = gets.split(" ").map(&:to_i)
ls = gets.split(" ").map(&:to_i).sort

max_length = ls.pop
sum_lentghs = ls.inject(:+)

print max_length < sum_lentghs ? "Yes" : "No"