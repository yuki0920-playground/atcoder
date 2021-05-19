N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

# 足場i+1番目までに支払う支払う最小コスト
DP = {}

# 漸化式
# ただし if i + j >= N
# DP[i + j] = DP[i] + (h[i + j] - h[i]).abs
# DP[i + j] = [DP[i + j], DP[i] + (h[i + j] - h[i]).abs].min ただし DP[i+j]があるとき


# 初期化
DP[0] = 0

(0...N).each do |i|
  (1..K).each do |j|
    # i+jのインデックスは最大でもN-1までなので
    next if i + j >= N

    unless DP[i + j]
      DP[i + j] = DP[i] + (h[i + j] - h[i]).abs
    end

    DP[i + j] = [DP[i + j], DP[i] + (h[i + j] - h[i]).abs].min
  end
end

puts DP[N - 1]
