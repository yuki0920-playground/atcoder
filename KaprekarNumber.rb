N, K = gets.split.map(&:to_i)

memo = Array.new(K + 1)
memo[0] = N

K.times do |i|
  g0 = memo[i].to_s.split('').map(&:to_i)
  g1 = g0.sort.reverse.join.to_i
  g2 = g0.sort.join.to_i

  memo[i + 1] = g1 - g2
end

puts memo[K]
