N = gets.chomp.to_i
H = gets.split.map(&:to_i)

MEMO = Array.new(N)

(0..N-1).each do |i|
  if i == 0
    MEMO[i] = 0
  elsif
    i == 1
    MEMO[i] = (H[1] - H[0]).abs
  else
    MEMO[i] = [MEMO[i - 1] + (H[i] - H[i - 1]).abs, MEMO[i - 2] + (H[i] - H[i - 2]).abs].min
  end
end
puts MEMO[N - 1]
