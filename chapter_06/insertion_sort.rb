def insertion_sort(array)
  (1...array.length).each do |index|
    temp = array[index]
    position = index - 1

    while position >= 0 do
      if array[position] > temp
        array[position + 1] = array[position]
        position = position - 1
      else
        break
      end
    end

    array[position + 1] = temp
  end
  return array
end

puts insertion_sort([65, 55, 35, 35, 25, 15, 10]).inspect
