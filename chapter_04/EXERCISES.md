# Speeding Up Your Code with Big O

1. Replace the question marks in the following table to describe how many steps occur for a given number of data elements across various types of Big O.

| N Elements | O(N) | O(log N) | O(N<sup>2</sup>) |
|------------|------|----------|--------|
| 100        | 100  | ?        | ?      |
| 2000       | ?    | ?        |        |

  > | N Elements | O(N) | O(log N) | O(N<sup>2</sup>)  |
  > |------------|------|----------|---------|
  > | 100        | 100  | 7        | 10000   |
  > | 2000       | 2000 | 11       | 4000000 |

2. If we have an O(N<sup>2</sup>) algorithm that processes an array and find that it takes 256 steps, what is teh size of the array?
  > 16

3. Use Big O Notation to describe the time complexity of the following function. It finds the greates product of any pair of two numbers within a given array.
``` python
def greatestProduct(array):
  greatestProductSoFar = array[0] * array[1]

  for i, iVal in enumerate(array):
    for j, jVal in enumerate(array):
      if i != j and iVal * jVal > greatestProductSoFar:
        greatestProductSoFar = iVal * jVal

  return greatestProductSoFar
```
  > O(N<sup>2</sup>)


4. The following function finds the greatest single number within an array, but has an afficiency of O(N<sup>2</sup>). Rewrite the function so That it becomes a speed O(N).
``` python
# origin example in python
def greatestNumber(array):
  for i in array:
    # Assume for now that i is the greatest
    isIValTheGreatest = True

    for j in array:
      # If we find another value that is greater than i,
      # i is not the greatest
      if j > i:
        isIValTheGreatest = False

    # If, by the time we checked all the other numbers, i
    # is still the greatest, it means that i is the greatest number
    if isIValTheGreatest:
      return i

```

``` ruby
def greatest_number(array)
  array.each do |i|
    # assume i is greates
    i_is_greatest = true

    array.each do |j|
      # If we find another value that is greater than i,
      # i is not the greatest
      if j > i
        i_is_greatest = false
      end
    end

    if i_is_greatest
      return i
    end
  end
end
```

  > ``` ruby
  > def greatest_number(array)
  >   greatest = array[0]
  > 
  >   array.each do |i|
  >     if i > greatest
  >       greatest = i
  >     end
  >   end
  > 
  >   return greatest
  > end
  > ```
