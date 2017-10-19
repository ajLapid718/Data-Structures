Link: www.hackerrank.com/challenges/mini-max-sum/problem

Task
Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
Then print the respective minimum and maximum values as a single line of two space-separated long integers.

Sample Input

1 2 3 4 5

Sample Output

10 14

Explanation

The minimal sum is 1+2+3+4=10 and the maximal sum is 2+3+4+5=14.
Thus, we print these minimal and maximal sums as two space-separated integers on a new line.

# Provided by HackerRank
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

# My solution
sums = []

arr.each do |num|
  sums << arr[0..-1].reduce(:+) - num
end

print "#{sums.min} #{sums.max}"
