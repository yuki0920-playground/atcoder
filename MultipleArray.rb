N = gets.to_i
a = []
b = []

N.times do
  num_a, num_b = gets.split.map(&:to_i)
  a << num_a
  b << num_b
end

a.reverse!
b.reverse!

count = 0
b.each_with_index do |num_b, i|
  num_a = a[i] + count

  mod = num_a % num_b
  count += num_b - mod if mod != 0
end
puts count
