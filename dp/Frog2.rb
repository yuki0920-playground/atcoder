# 添字の制約
# 0 <= i <= N
# 1 <= j <= K
# i + j < K

# dpの定義
# i番目の足場までにかかるコストの最小値

# 漸化式
# dp[i + j] = [dp[i + j], dp[i] + (h[i + j] - h[i]).abs].min

# 初期化
# dp[0] = 0

# 出力
# dp[N - 1]

N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(N + 1, Float::INFINITY)
dp[0] = 0

N.times do |i|
  (1..K).each do |j|
    next if i + j >= N

    dp[i + j] = [dp[i + j], dp[i] + (h[i + j] - h[i]).abs].min
  end
end

puts dp[N - 1]
