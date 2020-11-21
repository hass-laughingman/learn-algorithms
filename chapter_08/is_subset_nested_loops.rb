def is_subset?(array1, array2)
  # determine which array is smaller
  if array1.length > array2.length
    larger_array = array1
    smaller_array = array2
  else
    larger_array = array2
    smaller_array = array1
  end

  # iterate through smaller array
  smaller_array.each do |i|
    # Assume temporarily that the current value from
    # amaller array is not found in larger array
    found_match = false
    
    # for each value in smaller array, iterate through
    # larger array
    larger_array.each do |j|

      # if the two valuse are equal, it means the current
      # value in smaller array is present in the larger array
      if i == j
        found_match = true
        break
      end
    end

    # if the current value in smaller array doesn't exist
    # in larger array, return false
    return false unless found_match
  end
  return true
end


ary1 = %w[a b c d e f]
ary2 = %w[b d f]

puts "is there a subset with #{ary1} and #{ary2}"
puts "subset: #{is_subset?(ary1, ary2)}"
