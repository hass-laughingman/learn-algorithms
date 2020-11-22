# Dynamic Programming

1. The following function accepts an array of numbers and returns the sum as long as a particular number doesn't bring the sum above 100. If adding a particular number will make the sum higher than 100, that number is ignored. However, this function makes unnecessary recursive calls. Fix the code to eliminate the unnecessary recursion
``` ruby
def add_until_100(array)
  return 0 if array.empty?

  if array[0] + add_until_100(1, array.length - 1]) > 100
    add_until_100(array[1, array.length - 1])
  else
    array[0] + add_until_100(array[1, array.length -1])
  end
end
```
> ``` ruby
> def add_until_100(array)
>   return 0 if array.empty?
>
>   sum_of_remaining = add_until_100(1, array.length - 1)
> 
>   if array[0] + sum_of_remaining > 100
>     sum_of_remaining
>   else
>     array[0] + sum_of_remaining
>   end
> end
> ```


2. The following function uses recursion to calculate the Nth number from a mathematical sequence known as the 'Golomb sequence'. It's terribly inefficient, though! Use memoization to optimize it.
``` ruby
def golomb(n)
  return 1 if n == 1
  1 + golomb(n - golomb(golomb(n - 1)))
end
```
> ``` ruby
> def golomb(n, memo={})
>   return 1 if n == 1
>
>   if !memo[n]
>     memo[n] = 1 + golomb(n - golomb(golomb(n - 1)))
>   end
>   memo[n]
> end
> ```


3. Here is asolution to the 'Unique Paths' problem. Use memoization to improve its efficiency.
``` ruby
def unique_paths(rows, columns)
  return 1 if [rows, columns].include? 1
  unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
end
```
> ``` ruby
> def unique_paths(rows, columns, memo={})
>   return 1 if [rows, columns].include? 1
>
>   if !memo[[rows, columns]]
>     memo[[rows, columns]] = unique_paths(rows - 1, columns) + unique_paths(rows, columns - 1)
>   end
>   memo[[rows, columns]]
> end
> ```
