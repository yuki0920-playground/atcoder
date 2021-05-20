N, W = gets.chomp.split.map(&:to_i)
wv = Array.new(N).map { gets.chomp.split.map(&:to_i) }

dp = Hash.new { |h,k| h[k] = {} }
# dp[i][j] i個目までの品物を選び、重さjであるときの価値の最大値
# 0 <= i <= N - 1, 0 <= j <= W
# dp[i + 1][j + wv[i][0]] = dp[i] + wv[i][1]
# dp[i + 1][j] = dp[i][j]
# output dp[N]の最大値

dp[0][0] = 0

N.times do |i|
  (0..W).each do |j|
    next unless dp[i][j]

    weight, value = wv[i]

    if j + weight <= W
      # to_iすることでnilの場合を0に変換している
      dp[i + 1][j + weight] = [dp[i + 1][j + weight].to_i, dp[i][j] + value].max
    end
    dp[i + 1][j] = [dp[i + 1][j].to_i, dp[i][j]].max
  end
end

puts dp[N].values.max
