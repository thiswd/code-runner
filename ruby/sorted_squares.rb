def sorted_squares(nums)
  head = 0
  tail = nums.length - 1
  arr = []

  while head <= tail
    if (nums[head].abs > nums[tail].abs)
      arr.unshift(nums[head] ** 2)
      head += 1
    else
      arr.unshift(nums[tail] ** 2)
      tail -= 1
    end
  end
  arr
end

puts sorted_squares([-7,-3,2,3,11])
