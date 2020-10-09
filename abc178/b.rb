a, b, c, d = gets.chomp.split(' ').map(&:to_i)

number =
  [
    [a, b].max * [c, d].max,
    [a, b].max * [c, d].min,
    [a, b].min * [c, d].max,
    [a, b].min * [c, d].min
  ].max

puts number
