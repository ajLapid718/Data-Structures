Task:

There are two kangaroos on a number line ready to jump in the positive direction (i.e, toward positive infinity).
The first kangaroo starts at location x1 and moves at a rate of v1 meters per jump. The second kangaroo starts at location x2 and moves at a rate of v2 meters per jump.
Given the starting locations and movement rates for each kangaroo, can you determine if they'll ever land at the same location at the same time?

Sample Input 0

0 3 4 2

Sample Output 0

YES

Explanation 0

The two kangaroos jump through the following sequence of locations:

1: 0 -> 3 -> 6 -> 9 -> 12
2: 4 -> 6 -> 8 -> 10 -> 12

Thus, the kangaroos meet after  jumps and we print YES.

Sample Input 1

0 2 5 3

Sample Output 1

NO

Explanation 1

The second kangaroo has a starting location that is ahead (further to the right) of the first kangaroo's starting location (i.e., x2 > x1 ).
Because the second kangaroo moves at a faster rate (meaning v2 > v1) and is already ahead of the first kangaroo, the first kangaroo will never be able to catch up.
Thus, we print NO.

# My solution
def kangaroo(x1, v1, x2, v2)
  position_gap = x2 - x1
  velocity_gap = v2 - v1

  if (v1 > v2) && (position_gap % velocity_gap == 0)
    print "YES"
  else
    print "NO"
  end
end

# Provided by HackerRank
x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;

Breakdown

Based on the constraints, the first kangaroo will always start behind the second kangaroo. In other words, the second kangaroo will always initially be ahead of first kangaroo.
Therefore, we will run into a situation where the kangaroos will never meet if v2 > v1. This would mean the second kangaroo is both starting ahead AND moving faster.
In order for the kangaroos to meet, it is necessary for the first kangaroo's speed per jump to be faster than the second kangaroo's speed per jump.
Now we need to take a look at the second condition: (position_gap % velocity_gap == 0). This means that there will come a point where the two will meet despite their differences.
The logic is derived from below:

(x1) + (j) * (v1) = (x2) + (j) * (v2)

The starting point, x1, is static. We add it once and once only.
The variable j represents the amount of jumps it would take for the two kangaroos to meet concurrently.
This variable j should be multipled by the ground covered per jump aka v1.
The variable j would then be incremented by 1 each iteration to reflect each jump.
The same goes for the other side of the equation.

From here, algebra happens to balance the equation.

: (x1) + (j) * (v1) = (x2) + (j) * (v2) # original equation
: (j) * (v1) = (x2 - x1) + (j) * (v2) # subtract both sides by x1
: (j) * (v1) - (j * v2) = (x2 - x1) # subtract both sides by j * v2
: (j) * (v1 - v2) = (x2 - x1) # factor out j from the left side of the equation
: (j) = (x2 - x1) / (v1 - v2) # divide both sides by v1 - v2
: (amount_of_jumps) = (position_gap % velocity_gap == 0) # result
