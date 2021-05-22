str = gets.chomp.split('').reverse

convert_s = str.map {|s|
  if s == "6"
    "9"
  elsif s == "9"
    "6"
  else
    s
  end
}.join

puts convert_s
