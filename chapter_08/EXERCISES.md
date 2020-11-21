# Blazing Fast Lookup with Hash Tables

1. Write a function that returns the intersection of two arrays. The intersection is a third array that contains all values contained within the first two arrays. For example, the intersection of [1, 2, 3, 4, 5] and [0, 2, 4, 6, 8] is [2, 4]. Your function should have a complexity of O(N).
> ``` ruby
> def intersection(array1, array2)
>   elements = {}
>   intersect = []
>
>   array1.each do |i|
>     elements[i] = true
>   end
>
>   array2.each do |j|
>     intersect << j if elements[j]
>   end
>
>   return intersect
> end
> ```


2. Write a function that accepts an array of strings and returns the first duplicate value it finds. For example, if the array is ["a", "b", "c", "d", "c", "e", "f"], the function should return "c", since it's duplicated within the array. You can assume that there's one pair of duplicates within the array). Make sure the function has an efficiency of O(N).
> ``` ruby
> def find_duplicate(array)
>   characters = {}
>
>   array.each do |c|
>     return c if characters[c]
>     characters[c] = true
>   end
> end
> ```


3. Write a function that accepts a string that contains all the letters of the alphabet except one and returns the missing letter. For example the string, "the quick brown box jumps over a lazy dog" contains all the letters of the alphabet except the letter, "f". The function should have a time complexity of O(N).
> ``` ruby
> def find_missing(string)
>   characters = {}
>   string.each do |c|
>     characters[c] = true
>   end
>
>   (a..z).each do |c|
>     return c unless characters[c]
>   end
> end
> ```


4. Write a function that returns the first non-duplicated character in a string. For example, the string, "minimum" has two characters that only exist once-the "n" and the "u", so your function should return the "n", since it occurs first. The function should shave an efficiency of O(N).
> ``` ruby
> def non_duplicate(string)
>   character_count = Hash.new(0)
>
>   string.each do |c|
>     character_count[c] += 1
>   end
>
>   string.each do |c|
>     return c if character_count[c] == 1
>   end
> end
> ```
