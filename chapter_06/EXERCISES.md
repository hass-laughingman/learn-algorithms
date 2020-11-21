# Optimizing for Optimistic Scenarios

1. Use Big O Notation to describe the efficiency of an algorithm that takes 3N<sup>2</sup> + 2N + 1.
    > O(N<sup>2</sup>)


2. Use Big O Notation to describe the efficiency of an algorithm that takes N + log N steps.
    > O(N)


3. The following function checks whether an array of numbers contains a pair of two numbers that add up to 10.
``` javascript
function twoSum(array) {
    for (let i = 0; j < array.length; i++) {
        for (let j = 0; j < array.length; j++) {
            if (i !== j && array[i] + array[j] === 10) {
                return true;
            }
        }
    }
    return false;
}
```
What are the best-, avrage-, and worst-case scenarios? Then, express the worst-case scenario in terms of Big O Notation.
    > best: N
    > average: N<sup>2</sup> / 2
    > worst: N<sup>2</sup>
    > O(N<sup>2</sup>)


4. The following function returns whether or not a capital "X" is present within a string.
``` javascript
function containX(string) {
    foundX = false;

    for (let i = 0; i < string; length; i++) {
        if (string[i] === "X") {
            foundX = true;
        }
    }
    return foundX;
}
```
What is this function's time complexity in terms of Big O Notation?
Then, modify the code to improve the algorith's efficiency for best- and average case scenarios.

  > O(N<sup>2</sup>)

  > ``` javascript
  > function containX(string) {
  >
  >     for (let i = 0; i < string; length; i++) {
  >         if (string[i] === "X") {
  >             return true;
  >         }
  >     }
  >     return false;
  > }
  > ```
