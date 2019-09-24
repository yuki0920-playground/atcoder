n = gets.to_i
w = n.times.map{ gets.chomp.to_s }
ans = 'Yes'
(1...n).each do |i|
    if w[i][0] != w[i-1][-1]
        ans = 'No'
        break
    end
end
if ans == 'Yes'
    if w.uniq.count == n
        puts ans
    else
        ans = 'No'
        puts ans
    end
else
    puts ans
end