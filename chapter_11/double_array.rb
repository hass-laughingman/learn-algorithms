def double_array(array, index = 0)
  # base case, when the index goes past  the end of the array
  return if index >= array.length

  array[index] *= 2
  double_array(array, index + 1)
  array
end

puts double_array([1, 2, 3, 4]).inspect
