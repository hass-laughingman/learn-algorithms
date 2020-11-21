def intersection(first_array, second_array)
  result = []

  first_array.each do |i|
    second_array.each do |j|
      if i == j
        result.push(i)
        break
      end
    end
  end
  return result
end

puts intersection([1, 2, 3, 4, 5], [2, 4, 6, 8, 10]).inspect
