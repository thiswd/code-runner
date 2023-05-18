def missing_number(nums)
  sum_all = (0..nums.length).reduce(:+)
  sum_arr = nums.reduce(:+)
  sum_all - sum_arr
end


def missing_number(nums)
  n = nums.length
  expected_sum = n * (n + 1) / 2
  actual_sum = nums.reduce(:+)
  expected_sum - actual_sum
end
