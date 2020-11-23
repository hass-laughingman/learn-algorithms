class TreeNode
  def initialize(value, left = nil, right = nil)
    @value = value
    @left_child = left
    @right_child = right
  end

end

class Tree
  def initialize(node)
    @root_node = node
  end

  def search(value, node = nil)
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

  def insert(value, node)
    if value < node.value
      # if the left child does not exist, we want to insert
      # the value as the left child
      if node.left_child.nil?
        node.left_child = TreeNode.new(value)
      else
        insert(value, node.left_child)
      end

    elsif value > node.value
      # if the right child does not exist, we want to insert
      # the value as the right child
      if node.right_child.nil?
        node.right_child = TreeNode.new(value)
      else
        insert(value, node.right_child)
      end
    end
  end

  def delete(value, node = @root_node)
    # base case is when we've hit the bottom of the tree,
    # and the parent node has no childres
    if node.nil?
      nil

    # if the value we're deleting is less or greater than the current node,
    # we set the left or right child respectively to be 
    # the return value of a recursive call of this
    # very method on the current nodes' left or right subtree
    elsif value < node.value
      node.left_child = delete(value, node.left_child)

      # we return the current node (and its subtree if existent) to
      # be used as the new value of its parent's left or right child
      node

    elsif value > node.value
      node.right_child = delete(value, node.right_child)
      node

    # if the current node is the one we want to delete
    elsif value == node.value
      # if the current node has no left child, we delete it by 
      # returning its right child (and its subtree if existent)
      # to be its parent's new subtree
      if node.left_child.nil?
        node.right_child

      elsif node.right_child.nil?
        node.left_child

      # if the current node has two childre, we delete the current node
      # by calling the lift function, which changes the current
      # node's value to the value of its successor node
      else
        node.right_child = lift(node.right_child, node)
        node
      end
    end
  end

  def traverse_and_print(node = @root_node)
    return if node.nil?
    traverse_and_print(node.left_child)
    puts node.value
    traverse_and_print(node.right_child)
  end

  private

  def lift(node, node_to_delete)
    # if the current node of this function has a left child,
    # we respectively call this function to continue down
    # the left subtree to find the successor node
    if node.left_child
      node.left_child = lift(node.left_child, node_to_delete)
      node

    # if the current node has no left child, that means the crrent node
    # of this function is the successor node, and we take its value
    # and make it the new value of the node that we're deleting
    else
      node_to_delete.value = node.value
      # we return the successor node's right child to be now used
      # as its parent's left child
      node.right_child
    end
  end
end

