def binary_search(array, search_value)
  # First, we establish the lower and upper bounds of wher the value
  # we're searching for can be. To start, the lower bound is the first
  # value in the array, the upper bound is the last value:
  lower = 0
  upper = array.length - 1

  # We begin a loop in which we keep inspecting the middlemost value
  # between the upper and lower bounds:

  while lower <= upper do

    # We find the midpoint between the upper and lower bounds:
    middle = (upper + lower) / 2

    # We inspect the value at the midpoint
    middle_value = array[middle]

    # If the value at the midpoint is the one we're looking for, we're done.
    # If not, we change the lower or uppoer bound based on whether we need
    # to guess higher or lower
    if search_value == middle_value
      return middle
    elsif search_value < middle_value
      upper = middle - 1
    elsif search_value > middle_value
      lower = middle + 1
    end
  end

  # If we've norrowed the bounds until they've reached each other, that
  # means that the value we're searching for is not contained within
  # this array
  return nil
end

p binary_search([3, 17, 75, 80, 202], 22)
