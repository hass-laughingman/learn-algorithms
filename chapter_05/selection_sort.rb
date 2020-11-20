def selection_sort(array)
  i = 0
  while i < array.length - 1 do
    lowest_number_index = i

    j = i + 1
    while j < array.length do
      if array[j] < array[lowest_number_index]
        lowest_number_index = j
      end
      j += 1
    end

    if lowest_number_index != i
      array[i], array[lowest_number_index] = array[lowest_number_index], array[i]
    end
    i += 1
  end
  return array
end

puts selection_sort([65, 55, 35, 35, 25, 15, 10]).inspect
