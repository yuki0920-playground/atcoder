N,M,X,Y = gets.split(" ").map(&:to_i)
x,y = 2.times.map{gets.split(" ").map(&:to_i).sort}
puts (x.last < y.first && X < y.first && y.first <= Y ) ? 'No War' : 'War'