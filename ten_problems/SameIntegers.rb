a,b,c = gets.split(" ").map(&:to_i).sort

count = 0

count_a = (c - a) / 2
a += count_a * 2
count += count_a

count_b = (c - b) / 2
b += count_b * 2
count += count_b

if (c - a) == 1 && (c - b) == 1
  count += 1
elsif ((c - a) == 0 && (c - b) == 1) || ((c - a) == 1 && (c - b) == 0)
  count += 2
end

puts count
