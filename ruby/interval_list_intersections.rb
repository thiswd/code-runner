def interval_intersection(first_list, second_list)
  i, j = 0, 0
  intervals = []

  while i < first_list.length && j < second_list.length
    lo = [first_list[i].first, second_list[j].first].max
    hi = [first_list[i].last, second_list[j].last].min

    intervals << [lo, hi] if lo <= hi
    first_list[i].last < second_list[j].last ? i += 1 : j += 1
  end

  intervals
end

def interval_intersection(first_list, second_list)
  overlaps = []

  first_list.each do |start1, end1|
    second_list.each do |start2, end2|
      start_max = [start1, start2].max
      end_min = [end1, end2].min
      if start_max <= end_min
        overlaps << [start_max, end_min]
      end
    end
  end

  overlaps
end

def interval_intersection(first_list, second_list)
  i, j = 0, 0
  intervals = []

  while i < first_list.length && j < second_list.length
    interval = array_entries(first_list[i]) & array_entries(second_list[j])
    intervals.push(interval.minmax) if interval.any?
    first_list[i].last >= second_list[j].last ? j += 1 :  i += 1
  end
  intervals
end

def array_entries(arr)
  (arr.first..arr.last).entries
end

first_list = [[0,2],[5,10],[13,23],[24,25]]
second_list = [[1,5],[8,12],[15,24],[25,26]]

puts interval_intersection(first_list, second_list).inspect
