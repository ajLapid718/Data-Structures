// If you're new to linked lists, this is a great exercise for learning about them.
// Given a pointer to the head node of a linked list, print its elements in order, one element per line.
// If the head pointer is null (indicating the list is empty), don’t print anything.

// Test Case 0: NULL. An empty list is passed to the method, so nothing is printed.
// Test Case 1: 1->2->3->NULL. This is a non-empty list so we loop through each element, printing each element's data field on its own line.

/* Node is defined as
var Node = function(data) {
    this.data = data;
    this.next = null;
}
*/
// This is a "method-only" submission.
// You only need to complete this method.

// In JavaScript

function print(head) {
    while (head != null) {
        console.log(head.data)
        head = head.next
    }
}

// In Ruby (HackerRank does not, at the moment, accept solutions written in Ruby for this challenge)

// def print_list(head)
//   while head != nil
//     puts head.data
//     head = head.next
//   end
// end
