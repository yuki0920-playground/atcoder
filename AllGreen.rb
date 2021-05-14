require 'pry'
d, g = gets.chomp.split(' ').map(&:to_i)
problem_set = (1..d).map{ gets.chomp.split(' ').map(&:to_i) }
count = 0
[0, 1].repeated_permutation(d).each_with_index do |bits, i|
  total_score = 0
  total_ptoblems_count = 0
  problem_set.each_with_index do |(problems_count, bonus), j|
    if bits[j] == 1
      total_score += 100 * (j+1) * problems_count + bonus
      total_ptoblems_count += problems_count
    end

    if total_score >= g && total_ptoblems_count <= count
      count = total_ptoblems_count
      next
    end
  end

  problem_set.each_with_index.reverse_each do |(problems_count, bonus), j|
    point = problem_set.count - j + 1
    if bits.reverse[j] == 0
      (1..problems_count).each do
        total_score += 100 * point
        total_ptoblems_count += 1
      end
    end
  end
end

puts count
