n = gets
ls = gets.split(" ").map(&:to_i).sort

max_length = ls.lash
sum_lentghs = ls[0..-2].inject(:+)

print max_length < sum_lentghs ? "Yes" : "No"