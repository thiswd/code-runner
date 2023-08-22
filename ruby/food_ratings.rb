def food_ratings(ratings)
  sums = Hash.new(0)
  counts = Hash.new(0)

  ratings.each do |dish_id, score|
    sums[dish_id] += score
    counts[dish_id] += 1
  end

  averages = sums.map { |dish_id, sum| [dish_id, sum.to_f / counts[dish_id]] }

  highest_average = averages.max_by(&:last)

  highest_average.first
end

ratings =[
  [1, 5],
  [2, 4],
  [3, 3],
  [1, 1],
  [2, 3],
  [3, 4],
  [1, 3],
  [1, 5],
  [1, 5]
]

puts food_ratings(ratings)
