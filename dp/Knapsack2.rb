n, w = gets.chomp.split.map(&:to_i)
value_max = 10**5 + 1
wv = Array.new(n).map { gets.chomp.split.map(&:to_i) }
dp = Array.new(n + 1) { Array.new(value_max + 1, Float::INFINITY) }

# Nの最大が100でvalueの最大が1000のため
# dpの定義
# dp[i][j] i個目までの品物を選び、価値がjであるときの価値の最大値

# 添字の制約
# 0 <= i <= n - 1
# 1 <= j <= value_max
# j - value >= 0


# i+1項目の漸化式
# dp[i + 1][j] = dp[i][j - weight] + value (j >= weight)
# ddp[i + 1][j] = dp[i][j] (j < weigh)

# 初期化
# dp[0][0]=0

# 出力
# dp[n][w]の最大値

dp[0][0] = 0
n.times do |i|
  weight, value = wv[i]
  value_max.times do |j|
    if j - value >= 0
      dp[i + 1][j] = [dp[i][j], dp[i][j - value] + weight].min
    else
      dp[i + 1][j] = dp[i][j]
    end
  end
end

max = 0
dp[n].each_with_index do |num, index|
  max = index if num <= w
end
puts max
