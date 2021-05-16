require 'pry'
N = gets.chomp.to_i
days = Array.new(N) { gets.chomp.split(' ').map(&:to_i) }
# n日目までにxを選んだときの最大の幸福度を返す
MEMO = Hash.new { |h, k| h[k] = {} }

MEMO[0][0] = 0
days.each_with_index do |day, i|
  day.each_with_index do |d, j|
    prev = [0, 1, 2] - [j]
    prev.each do |k|
      MEMO[i + 1][j] = [MEMO[i + 1][j].to_i, MEMO[i][k].to_i + d].max
    end
  end
end

puts MEMO[N].values.max
