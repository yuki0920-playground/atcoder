N = gets.to_i
S = gets.chomp.split('')
Q = gets.to_i
T = Array.new(Q) { gets.split.map(&:to_i) }

res = S.dup
reverse = false
T.each do |num|
  t, a, b = num

  if t == 1
    if reverse
      res = res[N..] + res[..N - 1]
      reverse = !reverse
    end

    dup = res.dup
    res[a - 1] = dup[b - 1]
    res[b - 1] = dup[a - 1]
  else # t == 2
    reverse = !reverse
  end
end

puts res.join
