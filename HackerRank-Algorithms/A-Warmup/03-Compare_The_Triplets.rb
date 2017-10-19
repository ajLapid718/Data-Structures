# Link: www.hackerrank.com/challenges/compare-the-triplets/problem

# Sample Input

# 5 6 7
# 3 6 10

# Sample Output

# 1 1

# Explanation

# In this example:

# A = (a0, a1, a2) = (5,6,7)
# B = (b0, b1, b2) = (3,6,10)

# Now, let's compare each individual score:

# a0 > b0, so Alice receives 1 point.
# a1 = b1, so nobody receives a point.
# a2 < b2, so Bob receives 1 point.

# Alice's comparison score is 1, and Bob's comparison score is 1.
# Thus, we print 1 1 (Alice's comparison score followed by Bob's comparison score) on a single line.

# My solution
def solve(a0, a1, a2, b0, b1, b2)
  person_one = [a0, a1, a2]
  person_two = [b0, b1, b2]

  first_person = 0
  second_person = 0

  person_one.each_with_index do |score_one, idx|
    if score_one > person_two[idx]
      first_person += 1
    elsif score_one == person_two[idx]
      first_person += 0
      second_person += 0
    else
      second_person += 1
    end
  end
 print "#{first_person} #{second_person}"
end

# Provided by HackerRank
a0, a1, a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0, b1, b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")
