def super_digit(n, k)
  return n.to_i if n.length == 1

  sum = n.split("").inject(0) { |sum, x| sum + x.to_i }
  sum *= k
  super_digit(sum.to_s, 1)
end
