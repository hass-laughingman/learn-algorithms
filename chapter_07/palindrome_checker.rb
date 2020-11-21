def is_palindrome?(string)
  # start the left_index at index 0
  left_index = 0
  # start the right_indez at last index of array
  right_index = string.length - 1

  # iterate until leftindex reaches the middle of the array
  while left_index < string.length / 2 do
    # if the character on the left doesn't equal the character
    # on the right, the string is not a palindrome
    if string[left_index] != string[right_index]
      return false
    end

    left_index += 1
    right_index -= 1
  end
  return true
end

puts "is 'racecar' a palindrome: #{is_palindrome?('racecar')}"
puts "is 'car' a palindrome: #{is_palindrome?('car')}"
