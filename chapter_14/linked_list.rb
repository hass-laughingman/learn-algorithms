class LunkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node
  end

  def read(index)
    # we begin at the first node of the list
    current_node = first_node
    current_index = 0

    while current_index < index do
      # we keep following the links of each node until we get to the index we're looking for
      current_node = current_node.next_node
      current_index += 1

      # if we're past the end of the list, that means the
      # value cannot be found in the list, so return nil
      return nil unless current_node
    end

    current_node.data
  end
end
