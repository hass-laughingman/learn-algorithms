def has_duplicate?(array)
  # presort the array
  array.sort!

  (0...array.length).each do |index|
    return true if array[index] == array[index + 1]
  end
  false
end
