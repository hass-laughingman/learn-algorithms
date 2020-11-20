def bubble_sort(list)
  unsorted_until_index = list.size - 1
  sorted = false

  while !sorted do
    sorted = true
    unsorted_until_index.times do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i]
        sorted = false
      end
    end
    unsorted_until_index -= 1
  end
  return list
end

puts bubble_sort([65, 55, 35, 35, 25, 15, 10]).inspect
