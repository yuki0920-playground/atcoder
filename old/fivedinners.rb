dishes = []
5.times{ dishes << gets.to_i }
wait = dishes.map{ |dish| dish % 10 == 0 ? 0 : 10 - dish % 10 }
print dishes.map{ |n| n.ceil(-1) }.inject(:+) - wait.max