_ = gets.chomp.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

group_a = A.group_by(&:itself).transform_values(&:size)
group_c = C.group_by(&:itself).transform_values(&:size)

count = 0
B.each_with_index { |b, i|
  count += group_a[b].to_i * group_c[i + 1].to_i
}

puts count
