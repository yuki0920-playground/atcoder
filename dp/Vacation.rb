# dpの定義
# dp[i][j] i日目に活動jを選んだときの幸福度の最大値

# 添字の制約
# 0 <= i <= N - 1
# 0 <= j <= 2
# k = [0, 1, 2] - [j]

# i+1項目の漸化式
# dp[i + 1][j] = [dp[i + 1][j], dp[i][j] + happiness].max

# 初期化
# dp[0][0]=0

# 出力
# dp[N]の最大値

N = gets.chomp.to_i
days = Array.new(N) { gets.split.map(&:to_i) }
dp = Array.new(N + 1) { Array.new(3, 0) }
days.each_with_index do |day, i|
  day.each_with_index do |happiness, j|
    prev = [0, 1, 2] - [j]
    prev.each do |k|
      dp[i + 1][j] = [dp[i + 1][j].to_i, dp[i][k].to_i + happiness].max
    end
  end
end

puts dp[N].max
