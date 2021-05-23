n = gets.to_i
count = (1..1000000).count { |i|
  (i.to_s * 2).to_i <= n
}
puts count
