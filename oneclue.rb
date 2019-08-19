k,x = gets.strip.split(" ").map(&:to_i)
((x-k+1)..(x+k-1)).each do |x1|
    print "#{x1} "
end