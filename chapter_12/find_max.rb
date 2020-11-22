def max(array)
  # base case - if the array has only one element, it is
  # by definition the greatest number
  return array[0] if array.length == 1

  # compare the first element with the greatest element
  # from the remainder of the array. if the first element
  # is greater, return it as the greatest number
  if array[0] > max(array[1, array.length - 1])
    array[0]
  else
    max(array[1, array.length - 1])
  end
end
