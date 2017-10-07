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

# ```Python 3
items = [0]
for i in range(int(input())):
    nums = list(map(int, input().split()))
    if nums[0] == 1:
        items.append(max(nums[1], items[-1]))
    elif nums[0] == 2:
        items.pop()
    else:
        print(items[-1])
# ```Python 3

# ```Ruby
arr = _.chomp.split(' ').map(&:to_i)
stack = []
max_stack = []

arr.each_with_index do |num, idx|
    next if idx == 0
    case num
    when 1
        stack << arr[idx+1]
    when 2
        stack.pop
    when 3
        max_stack << stack.max
    end
end

puts max_stack
# ```Ruby
