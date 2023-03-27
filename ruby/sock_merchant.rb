def sock_merchant(ar)
  ar.tally.values.reduce(0) do |total, n|
    total += (n / 2).floor
    total
  end
end

puts sock_merchant([1, 2, 1, 2, 1, 2, 3, 1, 3, 4, 2])
