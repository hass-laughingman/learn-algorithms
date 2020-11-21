require_relative './queue'

class PrintManager
  def initialize
    @queue = Queue.new
  end

  def queue_print_job(document)
    @queue.enqueue(document)
  end

  def run
    # each time this loop runs, we read the document
    # at the front of the queue
    while @queue.read
      # we dequeue the document and print it
      print(@queue.dequeue)
    end
  end

  private

  def print(document)
    # code to run the actual printer goes here
    # for demo purposes, we'll print to the terminal
    puts document
  end
end
