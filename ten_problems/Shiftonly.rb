_n = gets
num = gets.chomp.split(' ').map(&:to_i)

def divide(num, count)
  return count unless num.all?(&:even?)

  count += 1

  divide(num.map{|n| n / 2}, count)
end

puts divide(num, 0)
