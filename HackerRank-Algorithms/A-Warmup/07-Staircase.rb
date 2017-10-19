Link: www.hackerrank.com/challenges/staircase/problem

Task
Write a program that prints a staircase of size N.

Sample Input
6

Sample Output
     #
    ##
   ###
  ####
 #####
######

Explanation
The staircase is right-aligned, composed of '#' symbols and spaces, and has a height and width of n = 6.

n = gets.strip.to_i

(1..n).each do |running_tally|
  puts ((" ") * (n-running_tally)) + ("#" * running_tally)
end
