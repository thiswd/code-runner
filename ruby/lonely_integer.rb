def lonely_integer(a)
  a.find { |n| a.count(n) === 1 }
end

puts lonely_integer([0, 0, 1, 2, 1])
