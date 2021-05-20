N, W = gets.chomp.split.map(&:to_i)
wv = Array.new(N).map { gets.chomp.split.map(&:to_i) }

dp = Array.new(N + 1) { Array.new(W + 1) { 0 }}

N.times do |i|
  (0..W).each do |j|
    weight, value = wv[i]

    if j >= weight
      # to_iすることでnilの場合を0に変換している
      dp[i + 1][j] = [dp[i][j], dp[i][j - weight] + value].max
    else
      dp[i + 1][j] = dp[i][j]
    end
  end
end

puts dp[N][W]
