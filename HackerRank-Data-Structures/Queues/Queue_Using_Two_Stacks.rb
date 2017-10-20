# Link: www.hackerrank.com/challenges/queue-using-two-stacks/problem

In this challenge, you must first implement a queue using two stacks. Then process q queries, where each query is one of the following 3 types:

1 x: Enqueue element x into the end of the queue.
2: Dequeue the element at the front of the queue.
3: Print the element at the front of the queue.

Sample Input

10
1 42
2
1 14
3
1 28
3
1 60
1 78
2
2

Sample Output

14
14

# My solution using a queue
amount_of_queries = gets.to_i
input = []

amount_of_queries.times do
  input << gets.split(" ").map(&:to_i)
end

queue = []

input.each do |query|
  case query.first
  when 1
    queue.unshift(query.last)
  when 2
    queue.pop
  when 3
    puts queue.last
  end
end

# My solution using two stacks
amount_of_queries = gets.to_i
input = []

amount_of_queries.times do
  input << gets.split(" ").map(&:to_i)
end

stack = []
other_stack = []

input.each do |query|
  case query.first
  when 1
    stack.push(query.last)
  when 2
    if other_stack.empty?
      until stack.empty?
        other_stack.push(stack.pop)
      end
    end
    other_stack.pop
  when 3
    if other_stack.empty?
      puts stack.first
    else
      puts other_stack.last
    end
  end
end
