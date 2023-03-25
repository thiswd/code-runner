s = [2, 2, 1, 3, 2]
d = 4
m = 2

def birthday(s, d, m)
  index = 0
  last_index = index + m
  divide_amount = 0

  while last_index <= s.length do
    if s[index...last_index].reduce(&:+) === d
      divide_amount += 1
    end
    index += 1
    last_index += 1
  end

  divide_amount
end

puts birthday(s, d, m)
