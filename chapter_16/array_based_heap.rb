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
end
