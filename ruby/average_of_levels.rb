# In-Place Tree BFS (Breadth-First Search)
def average_of_levels(root)
  return [] if root.nil?

  result = []
  queue = [root]

  while !queue.empty?
    level_length = queue.length;
    level_sum = 0

    level_length.times do
      node = queue.shift
      level_sum += node.val

      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end

    result.push(level_sum / level_length)
  end

  result
end
