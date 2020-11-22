def max(array)
  return array[0] if array.length == 1

  # calculate the max of the remainder of the array
  # and store it inside a variable

  max_of_remainder = max(array[1, array.length - 1])

  # comparison of first number against this variable

  if array[0] > max_of_remainder
    array[0]
  else
    max_of_remainder
  end
end
