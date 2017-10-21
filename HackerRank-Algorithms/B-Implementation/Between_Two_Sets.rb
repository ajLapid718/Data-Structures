Link: www.hackerrank.com/challenges/between-two-sets/problem

# Task (Paraphrased): A value is considered to be between two sets if this target value satisfies two conditions:
# 1) target_value % all_the_elements_in_set_A == 0
# 2) all_the_elements_in_set_B % target_value == 0

Sample Input

2 3
2 4
16 32 96

Sample Output

3

Explanation

There are three x values between A = {2,4} and B = {16,32,96}:

x = 4

All the elements in A evenly divide x = 4.
x = 4 evenly divides all the elements in B.

x = 8

All the elements in A evenly divide x = 8.
x = 8 evenly divides all the elements in B.

x = 16

All the elements in A evenly divide x = 16.
x = 16 evenly divides all the elements in B.

Thus, we print 3 as our answer.

# My solution using Ruby's built-in methods
def getTotalX(a, b)
  counter = 0

  (a.min..b.max).each do |num|
    if (a.all? { |factor| num % factor == 0 }) && (b.all? { |factor| factor % num == 0 })
      counter += 1
    end
  end

  return counter
end

# Provided by HackerRank
n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)
total = getTotalX(a, b)
puts total

# Alternatively, we can narrow down the bounds of the range by figuring out the LCM of Set A and the GCF of Set B
def getTotalX(a,b)
  least_common_multiple = a.reduce(:lcm)
  greatest_common_factor = b.reduce(:gcd)
  counter = 0

  (least_common_multiple..greatest_common_factor).each do |num|
    if num % least_common_multiple == 0 && greatest_common_factor % num == 0
      counter += 1
    end
  end

  return counter
end
