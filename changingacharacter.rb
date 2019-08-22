n,k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_s)
s.each_with_index{ |e,i| print i == k - 1 ? e.downcase : e }