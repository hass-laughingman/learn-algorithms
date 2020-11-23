# Node-Based Data Structure

1. Add a method to the `LinkedList` class that prints all the elements of the list.
> ``` ruby
> def to_s
>   current_node = first_node
> 
>   while current_node
>     puts current_node.data
>     current_node = current_node.next_node
>   end
> end
> ```


2. Add a method to the `DoubleLinkedList` class that prints all the elements of the list in reverse order.
> ``` ruby
> def to_s_reverse
>   current_node = last_node
> 
>   while current_node
>     puts current_node.data
>     current_node = current_node.previous_node
>   end
> end
> ```


3. Add a method to the `LinkedList` class that returns the last element from the list. Assume you don't know how many elements are in the list.
> ``` ruby
> def last
>   current_node = first_node
> 
>   while current_node.next_node
>     current_node = current_node.next_node
>   end
>   current_node.data
> end
> ```


4. Add a method to `LinkedList` class that reverses the list. That is if the original list is A -> B -> C, all of the list's links should change so that C -> B -> A
> ``` ruby
> def reverse!
>   previous_node = nil
>   current_node = first_node
> 
>   while current_node
>     next_node = current_node.next_node
> 
>     current_node.next_node = previous_node
> 
>     previous_node = current_node
>     current_node = next_node
>   end
>   first_node = previous_node
> end
> ```


5. Let's say you jave access to a node from somewhere in the middle of a LinkedList, but not the LinkedList itself. That is, you have a variable that points to an instance of Node, but you don't have access to the LinkedList instance. In this situation, if you follow this node's link, you can find all the items from this middle node until the end, but you have no way to find the nodes that preceed this node in the list. Write code that iwll effectively delete this node from the list. The entire remaining list should remain complete, withonly this node removed.
> ``` ruby
> def delete_middle_node(node)
>   node.data = node.next_node.data
>   node.next_node = node.next_node.next_node
> end
> ```
