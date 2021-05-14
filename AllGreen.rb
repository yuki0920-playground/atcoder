D, G = gets.split.map(&:to_i)
problem_sets = Array.new(D) { gets.split.map(&:to_i) }

ans = Float::INFINITY
# 全部解く難易度をbit全探索
[0, 1].repeated_permutation(D).each do |bits|
  score = 0
  problems = 0
  problem_sets.each_with_index do |(each_count, bonus), i|
    next if bits[i] == 0

    score += 100 * (i + 1) * each_count + bonus
    problems += each_count
  end

  # reverse_eachにインデックスを付けるとインデックスも逆順となる
  problem_sets.each_with_index.reverse_each do |(each_count, _), i|
    break if score >= G
    next if bits[i] == 1

    s = (i + 1) * 100
    n = ((G - score) / s).ceil

    break if n > each_count

    score += s * n
    problems += n
  end

  ans = [ans, problems].min if score >= G
end

puts ans
