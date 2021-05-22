N = gets.to_i
H, S = Array.new(N){ gets.split.map(&:to_i) }.sort_by{|num| - num[1]}.flatten.partition.each_with_index {|num, index| index.even? }

puts S.map.with_index{ |num, index| H[index] + num * index }.max
