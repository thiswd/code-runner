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

def find_disappeared_numbers(nums)
  all_nums = Set.new(1..nums.size)
  nums.each { |num| all_nums.delete(num) }
  all_nums.to_a
end

def find_disappeared_numbers(nums)
  counts = Array.new(nums.size + 1, 0)
  nums.each { |num| counts[num] += 1 }
  counts.each_index.select { |i| counts[i] == 0 && i != 0 }
end

def find_disappeared_numbers(nums)
  nums.each do |num|
    index = num.abs - 1
    nums[index] = -nums[index].abs
  end
  nums.each_index.select { |i| nums[i] > 0 }.map { |i| i + 1 }
end
