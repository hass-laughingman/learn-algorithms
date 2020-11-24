# Keeping Your Priorities Straight with Heaps

1. Draw what the following heap would look like after we insert the value 11 into it
```
           10
          /   \
         /     \
        /       \
       /         \
      9           8
     / \          /\
    /   \        /  \
   /     \      /    \
  6       5    7      4
 / \     /
2   1   3
```
> ```
>            11
>           /   \
>          /     \
>         /       \
>        /         \
>       10          8
>      / \          /\
>     /   \        /  \
>    /     \      /    \
>   6       9    7      4
>  / \     / \
> 2   1   3   5
> ```


2. Draw what the previous heap would look like we delete the root node
> ```
>             9
>           /   \
>          /     \
>         /       \
>        /         \
>       6           8
>      / \          /\
>     /   \        /  \
>    /     \      /    \
>   3       5    7      4
>  / \
> 2   1
> ```


3. Image you've built a brand-new heap by inserting the following numbers into the heap in this particular order: `[55, 22, 34, 10, 2, 99, 68]`. If you then pop them from the heap one at a time and insert the numbers into a new array, inwhat order would the numbers now appear?
> `[99, 68, 55, 34, 22, 10, 2]`
