def linear_search(array, search_value)
  # On an ordered array
  # we iterate through every element in the array
  array.each_with_index do |value, index|

    # If we find the value we're looking for, we return it's index
    if value == search_value
      return index

      # If we each an element what is greater than the value we're looking for, we can exit the loop early:
    elsif value > search_value
      break
    end
  end

  # we return nil if we do not find the value within the array
  return nil
end

p linear_search([3, 17, 75, 80,  202], 22)
