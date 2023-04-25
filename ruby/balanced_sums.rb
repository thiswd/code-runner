def balanced_sums(arr)
  middle_index = 0
  middle_element = nil
  arr_size = arr.length

  while(middle_index < arr_size)

    right_total = 0
    next_num = middle_index + 1
    if arr[next_num]
      right_total = arr[next_num...arr_size].reduce(:+)
    end

    left_total = 0
    prev_num = middle_index - 1
    if prev_num >= 0
      left_total = arr[0..prev_num].reduce(:+)
    end

    if right_total == left_total
      middle_element = arr[middle_index]
      break
    end
    middle_index += 1
  end

  middle_element ? "YES" : "NO"
end

puts balanced_sums([1, 2, 3, 3])
