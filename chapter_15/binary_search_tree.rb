class TreeNode
  def initialize(value, left = nil, right = nil)
    @value = value
    @left_child = left
    @right_child = right
  end

end

def search(value, node)
  # base case if the node is nonexistent or 
  # the value has been found
  if node is nil || node.value == value
    node 

  # if the value is less than the current node,
  # perform search on the left child
  elsif value < node.value
    search(value, node.left_child)

  # if the value is greater than the current node,
  # perform search on the right child
  else
    search(value, node.right_child)
  end
end
