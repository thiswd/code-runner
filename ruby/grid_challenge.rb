def gridChallenge(grid)
  sorted_grid = grid.map { |row| row.split('').sort }
  is_sorted = sorted_grid.transpose.all? do |col|
    col == col.sort
  end
  is_sorted ? 'YES' : 'NO'
end

grid = ['ebacd', 'fghij', 'olmkn', 'trpqs', 'xywuv']

puts gridChallenge(grid)
