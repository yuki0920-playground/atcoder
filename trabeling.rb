number = gets.to_i

judge  = "Yes"
number.times do |s|
    s = gets
    n = a = b = 0
    m,x,y = s.strip.split(" ").map(&:to_i)
    if (x + y - a - b).between?((-m - n), (m - n)) && ((m - n) - (x + y - a - b)) % 2 == 0
        n = m
        a = x
        b = y
    else
        judge = "No"
        break
    end
end
print judge