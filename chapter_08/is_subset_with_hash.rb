def is_subset?(array1, array2)
  hash_table = {}

  # Determine which array is smaller
  if array1.length > array2.length
    larger_array = array1
    smaller_array = array2
  else
    larger_array = array2
    smaller_array = array1
  end

  # store all items from larger_array inside hash_table
  larger_array.each do |i|
    hash_table[i] = true
  end

  # iterate through each item in smaller_array and return false
  # if we encounter an item not inside hash_table
  smaller_array.each do |j|
    return false unless hash_table[j]
  end

  # if we got this far in our without returning false,
  # it means that all the items in the smaller_array
  # must be contained within larger_array
  return true
end

ary1 = %w[a b c d e f]
ary2 = %w[b d f]

puts "is there a subset with #{ary1} and #{ary2}"
puts "subset: #{is_subset?(ary1, ary2)}"

puts "=============================="

ary1 = %w[a b c d e f]
ary2 = %w[b h d f]

puts "is there a subset with #{ary1} and #{ary2}"
puts "subset: #{is_subset?(ary1, ary2)}"
