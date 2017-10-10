# Link: https://www.hackerrank.com/challenges/maximum-element/problem

# You have an empty sequence, and you will be given  queries. Each query is one of these three types:

# 1 x  -Push the element x into the stack.
# 2    -Delete the element present at the top of the stack.
# 3    -Print the maximum element in the stack.

# Sample Input:
"
10
1 97
2
1 20
2
1 26
1 20
2
3
1 91
3
"
# Sample Output:
26
91

queries = gets.to_i
arr = []

queries.times do |placeholder|
  arr << gets.split(" ").map(&:to_i)
end

stack = []

arr.each do |a|
  if a[0] == 1
    stack << a[1]
  elsif a[0] == 2
    stack.pop
  elsif a[0] == 3
    puts stack.max
  end
end
