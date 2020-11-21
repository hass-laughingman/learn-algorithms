def sum(array)
  # base case: only one element in the array
  return array[0] if array.length == 1

  array[0] + sum(array[1, array.length - 1])
end
