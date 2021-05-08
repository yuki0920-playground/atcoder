n, k = gets.chomp.split(' ').map(&:to_i)

k.times do
  if n.modulo(200) == 0
    n /= 200
  else
    n = "#{n}200".to_i
  end
end

puts n
