require_relative './node'

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

  def index_of(value)
    # we begin at the first node of the list
    current_node = first_node
    current_index = 0

    begin
      # if we find the data we're looking for, we return it
      if current_node.data == value
        return current_index
      end

      # otherwise, we move on the next node
      current_node = current_node.next_node
      current_index += 1
    end while current_node

    # if we get through the entire list without finding the
    # data, we return nil
    
    nil
  end

  def insert_at_index(index, value)
    # we create the new node with the provided value
    new_node = Node.new(value)

    # if we are inserting at the beginning of the list
    if index.zero?
      # have our new node link to what was the first node
      new_node.next_node = first_node
      # establish that our new node is now the list's first node
      first_node = new_node
      return
    end

    # if we are inserting anywhere other than the beginning
    current_node = first_node
    current_index = 0

    # first, we access the node immediately before where the
    # new node will go
    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end

    # have the new node link to the next node
    new_node.next_node = current_node.next_node

    # modify the link of the previous node to point to
    # the new node
    current_node.next_node = new_node
  end
end
