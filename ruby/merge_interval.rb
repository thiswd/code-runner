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

def merge_intervals(intervals)
  intervals.sort_by! { |interval| interval[0] }

  merged = []
  current_interval = intervals[0]

  intervals[1..-1].each do |interval|
    if current_interval[1] >= interval[0]
      current_interval[1] = [current_interval[1], interval[1]].max
    else
      merged << current_interval
      current_interval = interval
    end
  end
  merged << current_interval
  merged
end

intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
