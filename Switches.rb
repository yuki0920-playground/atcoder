n, m = gets.chomp.split(' ').map(&:to_i)
k = (1..m).map {|i| gets.chomp.split(' ').map(&:to_i)}
mods = gets.chomp.split(' ').map(&:to_i)

count = 0
[0, 1].repeated_permutation(n).each do |bits|
  flag = true

  k.each_with_index do |ks, i|
    switch_count = ks[0]
    switches = ks[1..]
    mod = mods[i]

    c = switches.count {|j| bits[j - 1] == 1}

    flag = false unless c % 2 == mod
  end

  count += 1 if flag == true
end

puts count
