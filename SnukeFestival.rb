N = gets.to_i
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort
C = gets.split.map(&:to_i).sort

count = 0

B.each do |b|
  index_a = A.bsearch_index {|a| a >= b} || N
  index_c = N - (C.bsearch_index {|c| c > b} || N)
  count += index_a * index_c
end

puts count
