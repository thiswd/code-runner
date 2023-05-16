def maximum_subarray_sum(nums, k)
  max_sum = 0
  nums.each_cons(k) do |window|
    if window & window == window
      sum = window.reduce(:+)
      max_sum = sum if sum > max_sum
    end
  end
  max_sum
end

nums = [1,5,4,2,9,9,9]
k = 3

puts maximum_subarray_sum(nums, k)
