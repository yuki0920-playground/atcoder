N, W = gets.chomp.split.map(&:to_i)
wv = Array.new(N).map { gets.chomp.split.map(&:to_i) }

DP = Hash.new { |h,k| h[k] = {} }
# DP[i][j] i個目までの品物を選び、重さjであるときの価値の最大値
# 0 <= i <= N - 1, 0 <= j <= W
# dp[i + 1][j + wv[i][0]] = dp[i] + wv[i][1]
# dp[i + 1][j] = dp[i][j]
# output DP[N]の最大値

DP[0][0] = 0

(0...N).each do |i|
  (0..W).each do |j|
    next unless DP[i][j]

    weight = wv[i][0]
    value = wv[i][1]

    if j + weight <= W
      # to_iすることでnilの場合を0に変換している
      DP[i + 1][j + weight] = [DP[i + 1][j + weight].to_i, DP[i][j] + value].max
    end

    DP[i + 1][j] = [DP[i + 1][j].to_i, DP[i][j]].max
  end
end

puts DP[N].values.max
