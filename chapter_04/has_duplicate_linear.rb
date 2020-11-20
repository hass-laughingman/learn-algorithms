# O(N) algorithm

def has_duplicate?(array)
  steps = 0
  existing_numbers = []
  array.each do |item|
    steps += 1
    if existing_numbers[item] == 1
      return true
    else
      existing_numbers[item] = 1
    end
  end
  puts "Total steps: #{steps}"
  return false
end

puts has_duplicate?([1, 4, 5, 2, 9])
