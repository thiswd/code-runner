def diagonalDifference(arr)
  index1 = 0
  index2 = arr.length - 1
  sum1 = 0
  sum2 = 0

  arr.each_with_index do |ar, i|
    ar.each_with_index do |n, j|
      if index1 === i && index1 === j
        sum1 += n
        index1 += 1
      end
      if index2 === j
        sum2 += n
        index2 -= 1
      end
    end
  end
  [sum1, sum2].reduce(:-).abs
end

test = [
  [11,2,4],
  [4,5,6],
  [10,8,-12]
]

puts diagonalDifference(test)
