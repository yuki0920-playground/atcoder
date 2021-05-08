str = gets.chomp
length = str.length

while str.length >= 5
  %w(eraser erase dreamer dream).each do |word|
    str.delete_suffix! word
  end

  if str.length == length
    puts 'NO'
    exit
  end
end

if str.length == 0
  puts 'YES'
else
  puts 'NO'
end
