def has_duplicate(array)
  steps = 0 # count of steps

  array.each_index do |i|
    array.each_index do |j|
      steps += 1
      if i != j && array[i] == array[j]
        return true
      end
    end
  end
  puts "Total steps: #{steps}"
  return false
end

has_duplicate_value([1, 4, 5, 2, 9])
