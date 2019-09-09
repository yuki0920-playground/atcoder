n = gets.to_i
sum = []
n.times do
    a = gets.split(" ").map(&:to_s)
    if a[1] == 'JPY'
        sum << a[0].to_f
    else
        sum << a[0].to_f * 380_000
    end
end
puts sum.inject(:+)