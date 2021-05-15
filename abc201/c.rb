S = gets.chomp
o = []
x = []

S.split('').each_with_index do |str, i|
  o << i.to_s if str == 'o'
  x << i.to_s if str == 'x'
end

if o.count > 5
  puts 0
  exit
end

count = 0
(0..9999).each do |num|
  num_s = num.to_s.rjust(4, '0')
  numbers = num_s.split('').join

  if o.all? { |o| numbers.include? o } && x.none? { |x| numbers.include? x }
    count += 1
  end
end
puts count
