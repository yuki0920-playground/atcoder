# 添字の制約
# 0 <= i <= N

# dpの定義
# i番目の足場までにかかるコストの最小値

# 漸化式
# dp[i + 1] = [dp[i + 1], dp[i] + (h[i + 1] - h[i]).abs].min if i + 2 <=  N
# dp[i + 2] = [dp[i + 2], dp[i] + (h[i + 2] - h[i]).abs].min if i + 3 <= N

# 初期化
# dp[0] = 0

# 出力
# dp[N - 1]

N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(N + 1, Float::INFINITY)
dp[0] = 0

N.times do |i|
  dp[i + 1] = [dp[i + 1], dp[i] + (h[i + 1] - h[i]).abs].min if i + 2 <=  N
  dp[i + 2] = [dp[i + 2], dp[i] + (h[i + 2] - h[i]).abs].min if i + 3 <= N
end

puts dp[N - 1]
