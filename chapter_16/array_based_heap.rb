class Heap
  def initialize
    @data = []
  end

  def root_node
    @data.first
  end

  def last_node
    @data.last
  end

  def insert(value)
    # Turn value into last node my inserting it at the end of the array
    @data << value

    # keep track of the index of the newly inserted node
    new_node_index = @data.length - 1

    # the following loop executes the 'trickle up' algorithm
    # if the new node is not in the root position,
    # and it's greater than its parent node
    while new_node_index > 0 &&
        @data[new_node_index] > @data[parent_index(new_node_index)]

      # swap the new node with the parent node
      @data[parent_index(new_node_index)], @data[new_node_index] =
        @data[new_node_index], @dat[parent_index(new_node_index)]

      # update the index of the new node
      new_node_index = parent_index(new_node_index)
    end
  end

  def delete
    # we only ever delete the root node from a heap, so we
    # pop the last node from the array and make it the root node
    @data[0] = @data.pop

    # track the current index of the 'tricle node'
    trickle_node_index = 0

    # the following loop executes the 'tricke down' algorithm
    # we run the loop as long as the trickle node has a child
    # that is greater than it
    while has_greater_child(trickle_node_index)
      # save larger child index in variable
      larger_child_index = calculate_larger_child_index(trickle_node_index)

      # swap the tricle node with its larger child
      @data[trickle_node_index], @data[larger_child_index] =
        @data[larger_child_index], @data[trickle_node_index]

      # update tricle node's new index
      trickle_node_index = larger_child_index
    end
  end

  private

  def left_child_index(index)
    index * 2 + 1
  end

  def right_child_index(index)
    index * 2 + 2
  end

  def parent_index(index)
    (index - 1) / 2
  end

  def has_greater_child(index)
    # we check whether the node at index has left and right
    # children and if either of those children are greater
    # than the node at index
    (@data[left_child_index(index)] &&
      @data[left_child_index(index)] > @data[index]) ||
      (@data[right_child_index(index)] &&
      @data[right_child_index(index)] > @data[index])
  end

  def calculate_larger_child_index(index)
    # if there is no right child
    if !@data[right_child_index(index)]
      # Return left child index
      return left_child_index(index)
    end

    # if right child value is greater than left child value
    if @data[right_child_index(index)] > @data[left_child_index(index)]
      # return right child index
      right_child_index(index)

    # if the left child value is greater or equal ro right child
    else
      # return the left child index
      left_child_index(index)
    end
  end
end
