N, K = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

# 足場i+1個目までに支払う支払う最小コスト
DP = Hash.new(10001)

# 漸化式
# DP[i] = [DP[i], DP[i - j] + [h[i] - h[j]].abs].min
# ただし if i < j

# 初期化
DP[0] = 0

(0...N).each do |i|
  (1..K).each do |j|
    # hのインデックスは最大でもN - 1までなので
    next if j > N - 1
    # i+jのインデックスは最大でもNまでなので
    next if i + j > N

    DP[i + j] = [DP[i + j].to_i, DP[i].to_i + (h[i] - h[j]).abs].min
  end
end

puts DP[N]
