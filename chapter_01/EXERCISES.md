# Why Data Structures Matter

- For an array containing 100 elements, provide the number of steps the following operations would take:
  - Reading
      > 1
  - Searching for a value not contained within the array
      > 100
  - Insertion at the beginning of the array
      > 101
  - Insertion at the end of the array
      > 1
  - Deletion at the beginning of the array
      > ~101~
      > 100. 1 to delete then 99 to shift remaining items
  - Deletion at the end of the array
      > 1

- For an array-based set containing 100 elements, provide the number of steps the following operations would take:
  - Reading
      > 1
  - Searching for a value not contained within the array
      > 100
  - Insertion at the beginning of the array
      > 201
  - Insertion at the end of the array
      > 101
  - Deletion at the beginning of the array
      > ~101~
      > 100. 1 to delete then 99 to shift remaining items
  - Deletion at the end of the array
      > 1

- Normally the search operation in an array looks for the first instance of a given value. But sometimes we may want to look for every instance of a given value. For example, say we want to count how many times the value "apple" is found inside an array. How many steps would it wake to find all the "apples"? Give you answer in terms of N.
    > N
