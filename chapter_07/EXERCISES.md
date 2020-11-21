# Big O in Everyday Code

1. Use Big O Notation to describe the time complexity of the following function. The function returns true if the array is a "100-Sum Array", and false if it is not.
A "100-Sum Array" meets the following criteria:
  - Its first and last numbers add up to 100
  - Its second and second-to-last numbers add up to 100
  - Its third and third-to-last numbers add up to 100, and so on
``` ruby
def one_hundred_sum?(array)
  left_index = 0
  right_index = array.length - 1

  while left_index < array.length / 2 do
    if array[left_index] + array[right_index] != 100
    return false

    left_index += 1
    right_index -= 1
  end
  return true
end
```
  > O(N)


2. Use Big O Notation to describe the time complexity of the following function. It merges two sorted arrays together to create a new sorted array containing all the values from both arrays.
``` ruby
def merg(array1, array2)
  new_array = []
  array1_pointer = 0
  array2_pointer = 0

  # Run the loop until we've reached end of both arrays
  while array1_pointer < array1.length || array2_pointer < array2.length
    # if we already reached the end of the first array
    # add items from second array
    if !array1[array1_pointer]
      new_array << array2[array2_pointer]
      array2_pointer += 1

    # if we already reached the end of the second array,
    # add item from first array
    elsif !array2[array2_pointer]
      new_array << array1[array1_pointer]
      array1_pointer += 1

    # if the current number in first array is less than current
    # number in second array, add from first array
    elsif array1[array1_pointer] < array2[array2_pointer]
      new_array << array1[array1_pointer]
      array1_pointer += 1

    # if the current number in second array is less than or equal
    # to current number in first array, add from second array
    else
      new_array << array2[array2_pointer]
      array2_pointer += 1
    end
  end

  return new_array
end
```
  > O(N)


3. Usr Big O Notation to describe the time complexity of the following function. This function solves a famous problem known as "finding a needle in the haystack".  Both the need and haystack are strings. For example, if the needle is "def" and the haystack is "abcdefghi". However, if the needle is "dd", it cannot be found in the haystack of "abcdefghi".  This function returns true or false, depending on whether the needle can be found in the haystack.
``` ruby
def find_needle(needle, haystack)
  needle_index = 0
  haystack_index = 0
  
  while haystack_index < haystack.length
    if needle[needle_index] == haystack[haystack_index]
      found_needle = true

      while needle_index < needle.length
        if need[needle_index] != haystack[haystack_index + needle_index]
          found_need = false
          break
        end
        needle_index += 1
      end

      return true if found_need
      needle_index = 0
    end
    haystack_index += 1
  end
  return false
end
```
  > O(N * M)


4. Use Big O Notation to describe the time complexity of the following function. This function finds the greatest product of three numbers from a given array.
``` ruby
def largest_product(array)
  largest_product_so_far = array[0] * array[1] * array[2]
  i = 0

  while i < array.length
    j = i + 1
    while j < array.length
      k = j + 1
      while k < array.length
        if array[i] * array[j] * array[k] > largest_product_so_far
          largest_product_so_far = array[0] * array[1] * array[2]
        end
        k += 1
      end
      j += 1
    end
    i += 1
  end

  return largest_product_so_far
end
```
  > O(N<sup>3</sup>)


5. I once saw a joke aimed at HR people: "Want to immediately eliminate the unluckiest people from your hiring process? Just take half of the resumes on your desk and throw them in the trash." If we were to write software that kept reducing a pile of resumes until we had one left, it might take the approach of alternating between throwing out the top half and the bottom half. That is, it will first eliminate the top half of the pile, and then proceed to eliminate the bottom half of thwat remains. It keeps alternating between eliminating the top and bottom until one lucky resume remains, and that's who we'll hire! Describe the efficiency of this function in terms of Big O.
``` ruby
def pick_resume(resumes)
  eliminate = "top"
  while resumes.length > 1
    if eliminate == "top"
      resumes = resumes[resumes.length / 2, resumes.length - 1]
      eliminate = "bottom"
    elsif
      resumes = resumes[0, resumes.length / 2]
      eliminate = "top"
    end
  end
  return resumes[0]
end
```
  > O(log N)