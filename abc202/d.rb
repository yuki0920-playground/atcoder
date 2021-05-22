class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

class Integer
  alias :! :factorial
end

a, b, k = gets.split.map(&:to_i)

array = ('a' * a).split('') + ('b' * b).split('')

res =  array.permutation(a + b).to_a.uniq.sort[k - 1]

puts res.join
