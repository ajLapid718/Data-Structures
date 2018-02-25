You are given an array of n integers and a positive integer k.

Find and print the number of (i,j) pairs where i < j and a[i] + a[j] is divisible by k.

Input Format

The first line contains 2 space-separated integers, n and k, respectively.
The second line contains n space-separated integers describing the respective values of the array.

Output Format

Print the number of (i,j) pairs where i < j and a[i] + a[j] is evenly divisible by k.

Sample Input

6 3
1 3 2 6 1 2

Sample Output

5

# My solution which has a quadratic time complexity
def divisibleSumPairs(n, k, ar)
    counter = 0

    ar.each_with_index do |curr, idx1|
        ar.each_with_index do |folo, idx2|
            next if idx1 == idx2
            if (curr + folo) % k == 0 && idx1 < idx2
                counter += 1
            end
        end
    end

    counter
end

# Provided by HackerRank
n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
