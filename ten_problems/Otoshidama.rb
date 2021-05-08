num, sum = gets.chomp.split(' ').map(&:to_i)

ans = []

catch(:break_loop) do
  (0..num).each do |x|
    (0..(num-x)).each do |y|
      throw(:break_loop) if x + y > num

      z = num - x - y

      if 10000 * x + 5000 * y + 1000 * z == sum
        ans = [x, y, z]
        throw(:break_loop)
      end
    end
  end
end

puts ans.empty? ? '-1 -1 -1' : ans.join(' ')
