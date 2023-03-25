a = [1, 2, 2, 1]
b = [3, 3, 3, 4]
k = 5

def twoArrays(k, a, b)
  a = a.sort
  b = b.sort { |x, y| y - x }

  valid = a.each_with_index.all? do |number, index|
    number + b[index] >= k
  end

  valid ? "YES" : "NO"
end

puts twoArrays(k, a, b)
