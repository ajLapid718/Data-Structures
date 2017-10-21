You have to perform N operations on a queue of the following types:

E x : Enqueue x in the queue and print the new size of the queue.
D : Dequeue from the queue and print the element that is deleted and the new size of the queue separated by a space. If there is no element in the queue, then print -1 in place of the deleted element.

Input format
First line: N
Next N lines: One of the above operations

Output format

Enqueue operation: Print the new size of the queue
Dequeue operation: Print two integers, the deleted element and the new size of the queue.
If the queue is empty, print −1 and the new size of the queue.

Sample Input
5
E 2
D
D
E 3
D

Sample Output
1
2 0
-1 0
1
3 0

# My solution
amount_of_queries = gets.to_i

input = []

amount_of_queries.times do |placeholder|
  input << gets.split(" ")
end

queue = []

input.each do |query|
  case query.first
  when "E"
    queue.unshift(query.last.to_i)
    puts queue.size
  when "D"
    if queue.empty?
      puts "-1" + " " + "#{queue.size}"
    else
      puts "#{queue.pop}" + " " + "#{queue.size}"
    end
  end
end
