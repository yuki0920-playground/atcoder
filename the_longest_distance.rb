require 'complex'

n = gets.to_i
arr = []
num = []

n.times do
  arr << gets.chomp.to_s.split(' ')
end

arr.each do |a|
  arr.each do |b|
    max << ((a[0].to_i - b[0].to_i).abs ** 2 + (a[1].to_i - b[1].to_i).abs ** 2)
  end
end

puts Math.sqrt(num.max)