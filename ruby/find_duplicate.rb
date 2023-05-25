def find_duplicate(nums)
  # Start of the range is 1
  low = 1
  # End of the range is the size of the array minus 1 (because there's a duplicate)
  high = nums.size - 1

  # Keep doing the binary search until low is less than high
  while low < high
    # Find the mid-point of the current range
    mid = low + (high - low) / 2
    # Count the numbers in the array that are less than or equal to mid
    count = nums.count { |num| num <= mid }

    # If the count is greater than mid, the duplicate is in the lower half of the range
    # So, adjust the high to mid
    if count > mid
      high = mid
    else
      # If the count is not greater than mid, the duplicate is in the upper half
      # So, adjust the low to mid + 1
      low = mid + 1
    end
  end

  # The duplicate number is where low is
  low
end

find_duplicate([0,1,2,3,3,4])
