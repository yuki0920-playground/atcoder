# 5
# 12
# 1 2 4 5 11
# => "YES"
# 4
# 3
# 2 5 8 11
# => "NO"

require 'pry'
N = gets.chomp.to_ib
W = gets.chomp.to_i
problems = gets.chomp.split.map(&:to_i)
cunt_costs = gets.chomp.split.map(&:to_i)
# 回答はboolだがDPには最小コストを入れる
# i個までの数値を選ぶかを決め、重さjであるときの最小必要個数
DP = Hash.new { |h,k| h[k] = {} }

DP[0][0] = 0

(0...N).each do |i|
  (0..W).each do |j|
    DP[i + 1][j] = [DP[i][j].to_i, 0].min
    # 重量wを追加する場合も個数iのコストなしでよい
    DP[i + 1][j + problems[i]] =  DP[i + 1][j] += 1 if DP[i][j] < count_costs[i] && j + problems[i] <= W
  end
end
print DP
puts DP[N][W] ? "YES" : "NO"
