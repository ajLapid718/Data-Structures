# Print all N integers in A in reverse order as a single line of space-separated integers.

# Sample Input
# 4
# 1 4 3 2

# Sample Output
# 2 3 4 1

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

result = []

arr.each_index do |idx|
    result << arr[(idx+1)*(-1)]
end

print result.join(" ")
