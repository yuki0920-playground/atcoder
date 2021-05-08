str = gets.chomp

def extract_str(str)
  # puts str

  if str == ''
    puts 'YES'
    exit
  end

  if str.length <= 4
    puts 'NO'
    exit
  end

  if str[-5..-1] == 'dream' || str[-5..-1] == 'erase'
    extract_str(str[..-6])
  end

  if str[-6..-1] == 'eraser'
    extract_str(str[..-7])
  end

  if str[-7..-1] == 'dreamer'
    extract_str(str[..-8])
  end

  puts 'NO'
  exit
end

extract_str(str)
