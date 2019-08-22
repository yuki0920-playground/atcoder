s = gets.chomp
s1 = s[0..1].to_i
s2 = s[2..3].to_i

if s1.between?(1,12) && s2.between?(1,12)
    print "AMBIGUOUS"
elsif s1 != 0 && s2.between?(1,12)
    print "YYMM"
elsif s1.between?(1,12) && s2 != 0
    print "MMYY"
else
    print "NA"
end