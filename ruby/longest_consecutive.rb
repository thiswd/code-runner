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

nums = [0,3,7,2,5,8,4,6,0,1]
puts longest_consecutive(nums)
