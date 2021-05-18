# abcde
# ace
# => 3

# abcbc
# cba
# => 2


require 'pry'
S = gets.chomp.split('')
T = gets.chomp.split('')

# Sをi個,Tをj個選んだときの部分最長文字列
DP = Hash.new { |h,k| h[k] = {} }

# DP[0][0] = 0

(0..S.size).each do |i|
  (0..T.size).each do |j|
    if S[i] == T[j]
      DP[i + 1][j + 1] = [DP[i + 1][j + 1].to_i, DP[i][j].to_i + 1].max
    else
      DP[i + 1][j + 1] = [DP[i + 1][j + 1].to_i, DP[i + 1][j].to_i, DP[i][j + 1].to_i].max
    end
  end
end
print DP
puts DP[S.size][T.size]
