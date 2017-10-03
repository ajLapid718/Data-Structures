# Description, Analogies, and Real-World Application of a [Stack]

# www.studytonight.com
# Stack is an abstract data type with a bounded (predefined) capacity.
# It is a simple data structure that allows adding and removing elements in a particular order.
# Every time an element is added, it goes on the top of the stack, the only element that can be removed is the element that was at the top of the stack, just like a pile of objects.

# Basic features of Stack
#
# Stack is an ordered list of similar data type.
Stack is a LIFO structure. (Last In First Out).
# push() function is used to insert new elements into the Stack and pop() function is used to delete an element from the stack. Both insertion and deletion are allowed at only one end of Stack called Top.
# Stack is said to be in overflow state when it is completely full and is said to be in Underflow state if it is completely empty.

# Applications of Stack
# The simplest application of a stack is to reverse a word.
# You push a given word to stack - letter by letter - and then pop letters from the stack.

- When it comes to analogies or examples of a stack, consider:
                                                              1) A stack of textbooks
                                                              2) A stack of playing cards
                                                              3) A stack of dinner plates
                                                              4) A stack of barbell weights
- When it comes to real-world applications of a stack, consider:
                                                              1) Web browser history
                                                              2) The functionality of undo/redo
                                                              3) The functionality of forward/backward
- When it comes to implementation, consider:
                                            1) Linked List (usually a singly linked list with a pointer to a top element)
                                            2) Array (an array could be used but it has a static data size, which could lead to stack overflow)
- When it comes to the API of a stack, consider:
                                                1) push
                                                2) pop
                                                3) is_empty?
                                                4) peek
