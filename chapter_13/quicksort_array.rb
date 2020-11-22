class QuicksortArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)
    # we plways choose the right-most element as the pivot.
    # we keep the index of the pivot for later use
    pivot_index = right_pointer

    # we grab the pivot value itself
    pivot = @array[pivot_index]

    # we start the right pointer immediately to the left of the pivot
    right_pointer -= 1

    while true
      # move the left pointer to the right as long as it
      # points to value that is less than the pivot
      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      # move the right pointer to the left as long as it
      # points to a value that is greater than the pivot
      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end

      # we've now reached the point where we've stopped 
      # moving both the left and right pointers
      #
      # we check whether the left pointer has reached
      # or gone beyond the right pointer. if it has,
      # we break out of the loop so we can swap the pivot later
      if left_pointer >= right_pointer
        break
      else
        @array[left_pointer], @array[right_pointer] =
          @array[right_pointer], @array[left_pointer]

        # we move the left pointer over to the right, gearing up
        # for the next round of left and right pinter movements
        left_pointer += 1
      end
    end

    # as the final step of the partition we swap the value
    # of the left pointer with the pivot
    @array[left_pointer], @array[pivot_index] =
      @array[pivot_index], @array[left_pointer]

    # we return the left_pointer for the sake of the quicksort method
    # for later
    left_pointer
  end

  def quicksort!(left_index, right_index)
    # bae case: the subarray has 0 or 1 elements
    return if right_index - left_index <= 0

    # partition the range of elements and grab the index of the pibot
    pivot_index = partition!(left_index, right_index)

    # recursively call his quicksort! method on whatever
    # is to the left of the pivot
    quicksort!(left_index, pivot_index - 1)

    # recursively call this quicksort! method on whatever
    # is to the right of the pivot
    quicksort!(pivot_index + 1, right_index)
  end

  def quickselect!(kth_lowest_value, left_index, right_index)
    # if we rach a base case - that is, that the subarray has one cell,
    # we know we've found the value we're looking for
    return @array[left_index] if right_index - left_index <= 0

    # partition the array and grab the index of the pivot
    pivot_index = partition!(left_index, right_index)

    # if what we're looking for is to the left of the pivot
    if kth_lowest_value < pivot_index
      # recursively perform quickselect on the subarray to
      # the left of the pivot
      quickselect!(kth_lowest_value, left_index, pivot_index - 1)
    
    # if what we're lookign for is to the right of the pivot
    elsif kth_lowest_value > pivot_index
      # recursively perform quickselect on the subarray to
      # the right of the pivot
      quickselect!(kth_lowest_value, pivot_index + 1, right_index)

    # if kth_lowest_value == pivot_index
    else
      @array[pivot_index]
    end
  end
end
