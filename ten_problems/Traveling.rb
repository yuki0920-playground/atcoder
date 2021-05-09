n = gets.chomp.to_i

numbers = (1..n).map {|_n| gets.chomp.split(' ').map(&:to_i)}
numbers.each_with_index do |(t, x, y), i|
  prev_t, prev_x, prev_y = if i == 0
    [0, 0, 0]
  else
    numbers[i-1]
  end

  diff_zahyou = (x - prev_x).abs + (y - prev_y).abs
  diff_t = t - prev_t

  unless (diff_zahyou - diff_t).even? && diff_zahyou <= diff_t
    puts 'No'
    exit
  end
end

puts 'Yes'
