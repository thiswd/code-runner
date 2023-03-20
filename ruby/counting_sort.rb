def countingSort(arr)
  counter_arr = Array.new(100, 0)
  arr.reduce(counter_arr) do |memo, number|
    memo[number] += 1
    memo
  end
end

arr = [1,1,3,2,1]

puts countingSort(arr)
