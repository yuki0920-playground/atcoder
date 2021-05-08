num, sum = gets.chomp.split(' ').map(&:to_i)

ans = []

(0..num).each do |x|
  (0..(num-x)).each do |y|
    (0..(num-x-y)).each do |z|
      if 10000 * x + 5000 * y + 1000 * z == sum
        ans = [x, y, z]
        break
      end
    end
  end
end

puts ans.empty? ? '-1 -1 -1' : ans.join(' ')
