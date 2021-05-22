N = gets.to_i
tasks = Array.new(N) { gets.split.map(&:to_i) }.sort_by(&:last)

now_end = 0
output = "Yes"
(N).times do |i|
  next_time, next_end = tasks[i]
  next_start = next_end - next_time

  output = "No" if now_end > next_start
  now_end += next_time
end
puts output
