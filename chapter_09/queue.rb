class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data << element
  end

  def dequeue
    # the shift shift method removes and returns the 
    # first element of an array
    @data.shift
  end

  def read
    @data.first
  end
end

