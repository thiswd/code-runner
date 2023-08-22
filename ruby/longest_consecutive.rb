# https://leetcode.com/problems/longest-consecutive-sequence/

def longest_consecutive(nums)
  sequences = {}
  key = -1
  longest = 0
  each_count = 0

  nums.sort.each do |number|
    if sequences[key]&.last == number - 1
      sequences[key].push(number)
      each_count += 1
    elsif sequences[key]&.last == number
      next
    else
      each_count = 1
      key = number
      sequences[key] = [number]
    end
    if each_count > longest
      longest = each_count
    end
  end

  longest
end

def longest_consecutive(nums)
  return 0 if nums.empty?

  nums = nums.uniq.sort!
  longest_streak = 1
  current_streak = 1

  for i in 1...nums.length
    if nums[i] == nums[i-1] + 1
      current_streak += 1
    else
      longest_streak = [longest_streak, current_streak].max
      current_streak = 1
    end
  end

  [longest_streak, current_streak].max
end

nums = [0,3,7,2,5,8,4,6,0,1]
puts longest_consecutive(nums)
