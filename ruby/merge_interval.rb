def merge_intervals(numbers)
  sorted_numbers = numbers.sort_by { |arr| arr.first }

  intervals = [sorted_numbers.shift]
  sorted_numbers.each do |arr|
    if intervals.last.last >= arr.first
      min_max = [intervals[-1], arr].flatten.minmax
      intervals[-1] = min_max
    else
      intervals.push(arr)
    end
  end
  intervals
end
