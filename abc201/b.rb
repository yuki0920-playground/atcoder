N = gets.chomp.to_i
ST = Array.new(N) { gets.chomp.split(' ') }

puts ST.sort_by {|st| st[1].to_i }.reverse[1][0]
