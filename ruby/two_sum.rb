# https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
  head = 0
  tail = nums.length - 1

  while head < tail
    sum = nums[head] + nums[tail]

    if sum == target
      return [head, tail]
    elsif sum < target
      head += 1
    else
      tail -= 1
    end
  end
end

def two_sum(nums, target)
  cache = {}
  index = 0

  while index < nums.length
    remaining = target - nums[index]
    if num = cache[remaining]
      return [num, index]
    else
      cache[nums[index]] = index
    end
    index += 1
  end
end
