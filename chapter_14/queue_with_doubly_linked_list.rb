require_relative './double_linked_list'

class Queue
  attr_accessor :queue

  def initialize
    @data = DoubleLinkedList.new
  end

  def enqueue(element)
    @data.insert_at_end(element)
  end

  def dequeue
    removed_node = @data.remove_from_front
    removed_node.data
  end

  def read
    return nil unless @data.first_node
    @data.first_node.data
  end
end
