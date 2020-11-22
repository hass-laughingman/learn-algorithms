# Recursive Algorithms for Speed

1. Given an array of positive numbers, write a function that returns the greatest product of any three numbers. The approach of using three nested loops would clock in at O(N<sup>3</sup>), which is very slow. Use sorting to implement the function in a way that it computes at O(N log N) speed.
> ``` ruby
> def product_of_three(array)
>   array.sort!
>
>   # array[-1] * array[-2] * array[-3]
>   array.last(3).reduce(:*)
> end
> ```


2. The following function finds the 'missing number' from an array of intergers. That is, the array is expected to have all integers from 0 up to the array's length, but one is missing. As examples, the array `[5, 2, 4, 1, 0]` is missing the number `3`, and the array `[9, 3, 2, 5, 6, 7, 1, 0, 4]` is missing the number `8`. Here's an implementation that is O(N<sup>3</sup>). Use sorting to write a new implementation of this function that only takes O(N log N). 
``` javascript
// original example
function findMissingNumber(array) {
    for (let i = 0; i < array.length; i++) {
        if (!array.includes(i)) {
            return i;
        }
    }

    // if all numbers are present
    return null;
}
```
``` ruby
# converted example
def find_missing_number(array)
  (0...array.length).each do |i|
    if !array.include?(i)
      return i
    end
  end

  nil
end
```
> ``` ruby
> def find_missing_number(array)
>   array.sort!
>
>   array.each_with_index |value, index|
>     return value if value != index
>   end
> end
> ```


3. Write three different implementation of a function that finds the greatest number within an array. Write one function that is O(N<sup>2</sup>), one that is O(N log N), and one that is O(N)
> ``` ruby
> # O(N^2)
> def find_greatest(array)
>   array.each do |i|
>     is_greatest = true
>
>     array.each do |j|
>       is_greatest = i >= j
>     end
>
>     return i if is_greatest
>   end
>   greatest_so_far
> end
> ```

> ``` ruby
> # O(N log N)
> def find_greatest(array)
>   array.sort.last
> end
> ```

> ``` ruby
> # O(N)
> def find_greatest(array)
>   greatest_so_far = array.first
>
>   array.each do |i|
>     greatest_so_far = i if i > greatest_so_far
>   end
>
>   greatest_so_far
> end
> ```
