N = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i)
# DP定義 i個まで選びw以下のjを満たせばtrueにする
DP = Hash.new { |h,k| h[k] = {} }

# DP初期化
DP[0][0] = 0

# 制限を追加
W = problems.sum

(0...N).each do |i|
  (0..W).each do |j|
    # DP[i + 1] はDP[i]を前提にしているためガードする
    next unless DP[i][j]

    DP[i + 1][j] = true
    DP[i + 1][j + problems[i]] = true
  end
end

puts DP[N].keys.count
