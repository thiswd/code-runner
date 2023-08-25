# https://leetcode.com/problems/find-median-from-data-stream

class MedianFinder
  def initialize
    @nums = []
  end

  def add_num(num)
    index = @nums.bsearch_index { |x| x >= num } || @nums.size
    @nums.insert(index, num)
  end

  def find_median
    mid = @nums.size / 2

    if @nums.size.odd?
      return @nums[mid].to_f
    end

    return (@nums[mid - 1] + @nums[mid]) / 2.to_f
  end
end
