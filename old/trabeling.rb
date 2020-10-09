number = gets.to_i

t1,x1,y1 = 0,0,0

judge  = "Yes"

number.times do
    s = gets

    t2,x2,y2 = s.strip.split(" ").map(&:to_i)
    t = t2 - t1
    d = (x2 - x1).abs + (y2 - y1).abs
    if d <= t && (t - d).even?
        t1 = t2
        x1 = x2
        y1 = y2
    else
        judge = "No"
        break
    end
end
print judge