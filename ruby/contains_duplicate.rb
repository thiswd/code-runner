# https://leetcode.com/problems/contains-duplicate/

def contains_duplicate(nums)
  nums.lazy.tally.any? { |_, v| v > 1 }
end

puts contains_duplicate([1,1,1,3,3,4,3,2,4,2])
