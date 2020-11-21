def count_ones(outer_array)
  count = 0

  outer_array.each do |inner_array|
    inner_array.each do |number|
      if number == 1
        count += 1
      end
    end
  end
  
  return count
end

puts count_ones([[0, 1, 1, 1, 0], [0, 1, 0, 1, 0, 1], [1, 0]])
