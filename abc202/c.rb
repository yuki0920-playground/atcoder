N = gets.chomp.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

count = Hash.new(0)
C.each do |i|
  count[B[i - 1]] += 1
end
ans = 0

A.each { |j|
  ans += count[j]
}

puts ans
