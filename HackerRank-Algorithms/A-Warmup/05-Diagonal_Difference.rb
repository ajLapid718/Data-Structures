Link: www.hackerrank.com/challenges/diagonal-difference/problem

Task

Given a square matrix of size N x N, calculate the absolute difference between the sums of its diagonals.

Input Format

The first line contains a single integer, N. The next N lines denote the matrix's rows, with each line containing N space-separated integers describing the columns.
'
Sample Input

3
11 2 4
4 5 6
10 8 -12

Sample Output

15

Explanation

The primary diagonal is:

11
   5
     -12

The secondary diagonal is:

     4
   5
10

Absolute Difference Between Sums: |4 - 19| = 15

# Provided By HackerRank
n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

# My solution
primary_diagonal_sum = 0
secondary_diagonal_sum = 0

a.each_with_index do |arr, idx|
  primary_diagonal_sum += arr[idx]
  secondary_diagonal_sum += arr[(idx-(n-1)).abs]
end

print (primary_diagonal_sum - secondary_diagonal_sum).abs
