n = gets.to_i
sum = 0
n.times do
    money,currency = gets.split(" ").map(&:to_s)
    sum += currency == "JPY" ? money.to_f : money.to_f * 380_000
end
puts sum