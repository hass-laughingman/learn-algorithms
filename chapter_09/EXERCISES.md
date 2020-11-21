# Crafting Elegant Code with Stacks and Queues

1. If you were writing softwarre for a call center that places callers on hold and then assigns them to "the next available representative", would you use a stack or a queue?
  > queue


2. If you pushed numbers onto a stack in the following order: 1, 2, 3, 4, 5, 6, and then popped two items, which number would you be able to read from the stack?
  > 4


3. If you inserted numbers into a queue in the following order 1, 2, 3, 4, 5, 6, and then dequeued two items, which number would you be able to read from the queue?
  > 3


4. Write a function that uses a stack to reverse a string.
> ``` ruby
> def reverse(string)
>   stack = []
>
>   string.each do |c|
>     stack << c
>   end
>
>   reversed_string = ''
>
>   while stack
>     reversed_string += stack.pop
>   end
>
>   return reversed_string
> end
> ```
