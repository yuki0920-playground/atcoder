require 'pry'
S = 'logistic'
T = 'algorithm'

# s文字目、t文字目までの長さでの最短の編集距離を格納するテーブル
MEMO = Array.new(S.size + 1) { Array.new(T.size + 1) { Float::INFINITY } }

(0..S.size).each do |s|
  (0..T.size).each do |t|
    if s == 0
      MEMO[s][t] = t
    end

    if s == 0
      MEMO[s][t] = t
    end

    if s > 0 && t > 0
      # 変更操作
      if S[s - 1] == T[t - 1]
        MEMO[s][t] = [MEMO[s - 1][t - 1], MEMO[s][t]].min
      else
        MEMO[s][t] = [MEMO[s - 1][t - 1] + 1, MEMO[s][t]].min
      end
    elsif s > 0
      # sの削除操作
      MEMO[s][t] = [MEMO[s - 1][t] + 1, MEMO[s][t]].min
    elsif t > 0
      # 挿入操作(tの削除操作)
      MEMO[s][t] = [MEMO[s][t - 1] + 1, MEMO[s][t]].min
    end
  end
end

print MEMO
puts MEMO[S.size][T.size]
