N,M,X,Y = gets.split(" ").map(&:to_i)
x = gets.split(" ").map(&:to_i)
y = gets.split(" ").map(&:to_i)
puts (x.max < y.min && X < y.min && y.min <= Y ) ? 'No War
' : 'War'
