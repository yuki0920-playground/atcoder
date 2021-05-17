# 18
# 4
# 4
# 3 3 3 9
# => "YES"

# 18
# 4
# 3
# 3 3 3 9
# => "NO"
require 'pry'
W = gets.chomp.to_i
N = gets.chomp.to_i
k = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i)
# i個までの数値を選ぶかを決め、重さjであるときに選んだ個数の最小(大事)を返す
DP = Hash.new { |h,k| h[k] = {} }

DP[0][0] = 0

(0...N).each do |i|
  (0..W).each do |j|
    next unless DP[i][j]
    next if DP[i][j] >= k

    DP[i + 1][j + problems[i]] = [DP[i + 1][j + problems[i]].to_i, DP[i][j] + 1].max
  end
end
print DP
puts DP[N][W] ? "YES" : "NO"
