Link: https://www.hackerrank.com/challenges/simple-array-sum/problem

Task
Given an array of N integers, can you find the sum of its elements?

Sample Input
6
1 2 3 4 10 11

Sample Output
31

# My solution
def simpleArraySum(n, ar)
  sum = 0

  n.times do |idx|
    sum += ar[idx]
  end

  sum
end

# Provided by HackerRank
n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = simpleArraySum(n, ar)
puts result;
