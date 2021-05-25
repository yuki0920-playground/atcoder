N = gets.to_i
A = gets.split.map(&:to_i)

memo = Hash.new(0)

A.each do |i|
  memo[i] += 1
end

sum = 0
(-200..200).each do |i|
  (-200..200).each do |j|
    next if i >= j
    sum += memo[i] * memo[j] * (i - j) ** 2
  end
end
puts sum
