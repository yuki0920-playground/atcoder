a,b = gets.strip.split(" ").map(&:to_i)
price =
    if a >= 13
        b
    elsif a >= 6
        b/2
    else
        0
    end
print price