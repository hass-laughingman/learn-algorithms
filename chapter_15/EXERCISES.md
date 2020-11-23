# Speeding Up All the Things with Binary Search Trees

1. Imagine you were to take an empty binary search tree and insert the following sequence of numbers in this order `[1, 5, 9, 2, 5, 10, 6, 3, 8]`. Draw a diagram showing what the binary search tree would look like. Remember the number are being inserted in the order presented here.


2. If a well-balanced binary serch tree contains 1000 values, what is the maximum number of steps it would take to search for a value within it?


3. Write an algoithm that finds th greatest value within a binary search tree.


4. Another way to reaverse a tree is know as preorder traversal. Here is the code for it. For the example tree below, write out the order in which the book titles are printed with preorder traversal.
``` ruby
def traverse_and_print(node)
  return if node.nil?
  print(node.value)
  traverse_and_print(node.left_child)
  traverse_and_print(node.right_child)
end
```
```
                    Moby Dick
                   /         \
  Great Expectations          Robinson Crusoe
    /             \            /           \
Allice in       Lord of      Pride and     The Odyssey
Wonderland      the Flies    Prejudice
```


5. There is yet Another of traversal called postorder traversal. Here is the code. Write out the order in which the book titles are printed with postorder traversal
``` ruby
def traverse_and_print(node)
  return if node.nil?
  traverse_and_print(node.left_child)
  traverse_and_print(node.right_child)
  print(node.value)
end
```
```
                    Moby Dick
                   /         \
  Great Expectations          Robinson Crusoe
    /             \            /           \
Allice in       Lord of      Pride and     The Odyssey
Wonderland      the Flies    Prejudice
```
