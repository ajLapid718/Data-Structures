# Task

# You’re given the pointer to the head node of a linked list.
# Change the next pointers of the nodes so that their order is reversed.
# The head pointer given may be null meaning that the initial list is empty.

# My solution in Python 3; HackerRank does not support Ruby at the moment for this particular problem

# Provided by HackerRank
"""
 class Node(object):
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node
"""

def Reverse(head):
    previous_node = None
    current_node = head

    while (current_node != None):
        next_node = current_node.next
        current_node.next = previous_node
        previous_node = current_node
        current_node = next_node
    head = previous_node
    return head

# My solution in Ruby

class Node
  attr_accessor :data, :next

  def initialize(data=nil, next_node=nil)
    @data = data
    @next = next_node
  end
end

def Reverse(head)
  previous_node = nil
  current_node = head

  until current_node == nil
    next_node = current_node.next
    current_node.next = previous_node
    previous_node = current_node
    current_node = next_node
  end

  head = previous_node
end
