# 5
# 12
# 1 2 4 5 11
# => "YES"
# 4
# 3
# 2 5 8 11
# => "NO"

require 'pry'
N = gets.chomp.to_i
W = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i)
# i個までの数値を選ぶかを決め、重さjであるときにboolを返す
DP = Hash.new { |h,k| h[k] = {} }

DP[0][0] = true

(0...N).each do |i|
  (0..W).each do |j|
    DP[i + 1][j] = true if DP[i][j]
    # 重量wを追加する場合も個数iのコストなしでよい
    DP[i + 1][j + problems[i]] = true if DP[i + 1][j]
  end
end
print DP
puts DP[N][W] ? "YES" : "NO"
