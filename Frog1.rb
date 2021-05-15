N = gets.chomp.to_i
H = gets.split.map(&:to_i)

MEMO = Array.new(N)
MEMO[0] = 0

def dp(index)
  # ベースケース
  if index < 0
    return 0
  elsif MEMO[index]
    return MEMO[index]
  elsif index == 1
    return MEMO[1] = (H[1] - H[0]).abs
  end

  return MEMO[index] = [dp(index - 1) + (H[index] - H[index - 1]).abs, dp(index - 2) + (H[index] - H[index - 2]).abs].min
end

puts dp(N - 1)
