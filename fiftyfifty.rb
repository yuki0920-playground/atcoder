s = gets.chomp.split("").map(&:to_s).sort
print s[0] == s[1] && s[2] == s[3] && s[1] != s[2] ? "Yes" : "No"