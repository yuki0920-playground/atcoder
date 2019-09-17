n = gets.chomp.split("")
print n.each.map{ |e| e = e == '9' ? '1' : '9' }.join