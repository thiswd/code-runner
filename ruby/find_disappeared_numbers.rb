def find_disappeared_numbers(nums)
  i = 0
  while i < nums.length
    j = nums[i] - 1
    if nums[i] != nums[j]
      nums[i], nums[j] = nums[j], nums[i]  # swap
    else
      i += 1
    end
  end

  missing_numbers = []
  nums.each.with_index(1) do |number, index|
    if number != index
      missing_numbers << index
    end
  end
  missing_numbers
end
