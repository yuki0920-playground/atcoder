require 'complex'

n = gets.to_i
arr = []
num = []

n.times do
  arr << gets.split.map(&:to_i)
end

# ネストした繰り返しの回数を減らしている
(0..(n-1)).each do |a|
  ((a+1)..n-1).each do |b|
    num << ((arr[a][0].to_i - arr[b][0].to_i).abs ** 2 + (arr[a][1].to_i - arr[b][1].to_i).abs ** 2)
  end
end

puts Math.sqrt(num.max)