# Link: https://www.hackerrank.com/challenges/insert-a-node-at-the-tail-of-a-linked-list/problem
# You are given the pointer to the head node of a linked list and an integer to add to the list.
# Create a new node with the given integer.
# Insert this node at the tail of the linked list and return the head node of the linked list formed after inserting this new node.
# The given head pointer may be null, meaning that the initial list is empty.

# Provided by HackerRank
"""
 class Node(object):
   def __init__(self, data=None, next_node=None):
       self.data = data
       self.next = next_node
 """

# My solution in Python 3; HackerRank does not support Ruby at the moment for this particular problem
def Insert(head, data):
    if head == None:
        head = Node(data)
    else:
        current_node = head
        while (current_node.next != None):
            current_node = current_node.next
        current_node.next = Node(data)
    return head

# My solution in Ruby
class Node
  attr_accessor :data,:next

  def initialize data
    @data = data
    @next = nil
  end
end

class Solution
  def Insert(head, data)
    if head.nil?
      head = Node.new(data)
    else
      current_node = head

      until current_node.next == nil
        current_node = current_node.next
      end

      current_node.next = Node.new(data)
      return head
    end
  end
end
