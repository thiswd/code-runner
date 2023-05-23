# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
#
def is_cousins(root, x, y)
  found = {}

  def search_cousins(tree, parent, level, x, y, found)
    return unless tree

    if tree.val === x || tree.val === y
      found[parent&.val || -1] = level
    end

    search_cousins(tree.left, tree, level + 1, x, y, found)
    search_cousins(tree.right, tree, level + 1, x, y, found)
  end

  search_cousins(root, nil, 0, x, y, found)

  found.size == 2 && found.values.uniq.size == 1 ? true : false
end

def is_cousins(root, x, y)
  parents = {}
  levels = {}

  def dfs(node, parent, level, parents, levels)
    return unless node

    parents[node.val] = parent
    levels[node.val] = level

    dfs(node.left, node.val, level + 1, parents, levels)
    dfs(node.right, node.val, level + 1, parents, levels)
  end

  dfs(root, nil, 0, parents, levels)

  levels[x] == levels[y] && parents[x] != parents[y]
end
