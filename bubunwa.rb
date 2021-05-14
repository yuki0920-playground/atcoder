n = 4
a = [3, 2, 6, 5]
w = 14

MEMO = {}

def bubunwa(a, w)
  if a.empty?
    return w == 0 ? true : false
  end

  unless MEMO[[a, w]]
    MEMO[[a, w]] = bubunwa(a[1..], w) || bubunwa(a[1..], w - a[0])
  end

  MEMO[[a, w]]
end

puts bubunwa(a, w)
puts MEMO
