def maxMin(k, arr)
  arr.sort!
  unfairness = Float::INFINITY
  arr.each_with_index do |number, index|
    max_number = arr[k + index - 1]
    break unless max_number
    diff = max_number - number
    unfairness = diff if diff < unfairness
  end
  unfairness
end
