s = gets.to_i
a = []
c = 1
while
    s = s.even? ? s / 2 : s * 3 + 1
    c += 1
    if s == 1
        break
    end
end
puts c + 1