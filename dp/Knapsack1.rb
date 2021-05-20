N, W = gets.chomp.split.map(&:to_i)
wv = Array.new(N).map { gets.chomp.split.map(&:to_i) }
dp = Array.new(N + 1) { Array.new(W + 1, 0)}

# dpの定義
# dp[i][j] i個目までの品物を選び、重さjであるときの価値の最大値

# 添字の制約
# 0 <= i <= N - 1, , 1 <= j <= W, 0 <= w <= j

# i+1項目の漸化式
# dp[i + 1][j] = dp[i][j - weight] + value (j >= weight)
# ddp[i + 1][j] = dp[i][j] (j < weigh)

# 出力
# dp[N][W]の最大値

N.times do |i|
  (0..W).each do |j|
    weight, value = wv[i]
    if j >= weight
      dp[i + 1][j] = [dp[i][j], dp[i][j - weight] + value].max
    else
      dp[i + 1][j] = dp[i][j]
    end
  end
end

puts dp[N][W]
