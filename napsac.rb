require 'pry'
input = [[2, 3], [1, 2], [3, 6], [2, 1], [1, 3], [5, 85]]
# 重さの数
N = input.count
# 上限の重さ
W = 9
# 2次元のハッシュで初期化する
MEMO = Hash.new { |h,k| h[k] = {} }

# i は個数(選んでいなくても良い)
(0..(N - 1)).each do |i|
  # w は残りの重さ
  (0..W).each do |w|
    weight = input[i][0]
    value = input[i][1]

    if (w - weight) >= 0
      # MEMO[i][w - weight].to_i + value はおもりを追加した場合
      # MEMO[i][w] はおもりを追加した場合
      MEMO[i + 1][w] = [MEMO[i][w - weight].to_i + value, MEMO[i][w].to_i].max
    else
      MEMO[i + 1][w] = MEMO[i][w].to_i
    end
  end
end
