Link: www.hackerrank.com/challenges/plus-minus/problem

Task

Given an array of integers, calculate which fraction of its elements are positive, which fraction of its elements are negative, and which fraction of its elements are zeroes, respectively.
Print the decimal value of each fraction on a new line.

Sample Input

6
-4 3 -9 0 4 1

Sample Output

0.500000
0.333333
0.166667

# Provided by HackerRank
n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

# My solution
positive_nums = []
negative_nums = []
zeroes = []

arr.each do |num|
  if num.positive?
    positive_nums.push(num)
  elsif num.negative?
    negative_nums.push(num)
  else
    zeroes.push(num)
  end
end

puts positive_nums.count.to_f / n
puts negative_nums.count.to_f / n
puts zeroes.count.to_f / n
