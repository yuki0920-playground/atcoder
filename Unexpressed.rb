N = gets.to_i

max = (N ** 0.5).to_i
arr = []
(2..max).each do |i|
  x = i**2

  while x <= N
    arr << x
    x *= i
  end
end
puts N - arr.uniq.length
