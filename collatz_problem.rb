s = gets.to_i
a = [s]
while
    s = s.even? ? s / 2 : s * 3 + 1
    if a.include?(s)
        break
    end
    a << s
end
puts a.size+ 1