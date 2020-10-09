N = gets.chomp.to_s
n = N.length
answer = 0
if n.even?
    (1..(n/2)).each do |e|
        answer += 9 * 10 ** (2 * e - 2)
    end
else
    (1..(n-1)/2).each do |e|
        answer += 9 * 10 ** (2 * e - 2)
    end
    answer += N.to_i + 1 - 10 ** (n - 1)
end
print answer