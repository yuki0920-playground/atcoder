s = gets.strip.split("").map(&:to_i)
answer = "Good"
(0..2).each do |e|
    if s[e] == s[e+1]
        answer = "Bad"
        break
    end
end
print answer