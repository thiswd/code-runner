def dynamicArray(n, queries)
  arr = Array.new(n) { [] }
  lastAnswer = 0

  queries.each do |query|
    query_type, x, y = query
    index = (x ^ lastAnswer) % n

    if query_type == 1
      arr[index] << y
    elsif query_type == 2
      lastAnswer = arr[index][y % arr[index].size]
    end
  end
  lastAnswer
end

n = 2
queries = [
  [1, 0, 5],
  [1, 1, 7],
  [1, 0, 3],
  [2, 1, 0],
  [2, 1, 1]
]

puts dynamicArray(n, queries)
