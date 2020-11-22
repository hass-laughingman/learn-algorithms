# Learning to Write in Recursive

1. Use recursion to write a function that accepts an array of strings and returns the total number of characters across all the strings. For example, if the input array is `['ab', 'c', 'def', 'ghij']`, the output should be 10 since there are 10 characters in total.

2. Use recursion to write a function that accepts an array of numbers and returns a new array containing just the even numbers.


3. There is a numerical sequence known as 'Triangular Numbers'. The pattern begins as 1, 3, 6, 10, 15, 21, and continues onward with the Nth number in the pattern, which is N plus the previous number. For example, the 7th number in the sequence is 28, since it's 7 (which is N) plus 21 (the previous number in the sequence). Write a function that accepts a number for N and returns the correct number from the series. That is, if the function was passed the number 7, the function would return 28.


4. Use recursion to write a function that accepts a string and returns the first index that contains the character 'x'. For example, the string, 'abcdefghijklmnopqrstuvwxyz' has an 'x' at index 23. To keep things simple, assume the string definitely has at least one 'x'.


5. This problem is known as the 'Unique Paths' problem: Let's say you have a grid of rows and columns. Write a function that accepts a number of rows and a number of columns, and calculates the number of possible 'shortest' paths from the upper-leftmost square to the lower-rightmost square. For example, there's what the grid looks like with three rows and seven columns. You want to get from the 'S' (Start) to the 'F' (Finish).
```
---------------
|S| | | | | | |
---------------
| | | | | | | |
---------------
| | | | | | |F|
---------------
```

By 'shortest' path, I mean that at every step, you're moving either one step to the right:
```
---------------
|S+>| | | | | |
---------------
| | | | | | | |
---------------
| | | | | | |F|
---------------
```

or one step downward:
```
---------------
|S| | | | | | |
-V-------------
| | | | | | | |
---------------
| | | | | | |F|
---------------
