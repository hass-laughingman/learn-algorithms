def has_duplicate_value(array)
  array.each_index do |i|
    array.each_index do |j|
      if i != j && array[i] == array[j]
        return true
      end
    end
  end
  return false
end
