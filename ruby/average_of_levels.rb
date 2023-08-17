# In-Place Tree BFS (Breadth-First Search)

#https://leetcode.com/problems/average-of-levels-in-binary-tree/

# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end

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

def average_of_levels(root)
  return [] if root.nil?

  sum = []
  count = []
  stack = [[root, 0]]

  while !stack.empty?
    node, level = stack.pop

    sum[level] = (sum[level] || 0) + node.val
    count[level] = (count[level] || 0) + 1

    if node.left
      stack.push([node.left, level + 1])
    end

    if node.right
      stack.push([node.right, level + 1])
    end
  end

  sum.each_with_index.map { |s, i| s.to_f / count[i] }
end

def average_of_levels(root)
  return [] if root.nil?

  sum = []
  count = []

  def dfs(node, level, sum, count)
    return unless node

    sum[level] = (sum[level] || 0) + node.val
    count[level] = (count[level] || 0) + 1

    dfs(node.left, level + 1, sum, count)
    dfs(node.right, level + 1, sum, count)
  end

  dfs(root, 0, sum, count)
  sum.each_with_index.map { |s, i| s.to_f / count[i] }
end
