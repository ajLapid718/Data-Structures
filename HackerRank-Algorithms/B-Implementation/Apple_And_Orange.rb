Task

Sam's house has an apple tree and an orange tree that yield an abundance of fruit.
In the diagram below, the red region denotes his house, where s is the start point and t is the end point.
The apple tree is to the left of his house, and the orange tree is to its right.
You can assume the trees are located on a single point, where the apple tree is at point a and the orange tree is at point b.

When a fruit falls from its tree, it lands d units of distance from its tree of origin along the x-axis.
A negative value of d means the fruit fell d units to the tree's left, and a positive value of d means it falls d units to the tree's right.

Given the value of d for m apples and n oranges, can you determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range [s,t])?
Print the number of apples that fall on Sam's house as your first line of output, then print the number of oranges that fall on Sam's house as your second line of output.

Input Format

The first line contains two space-separated integers denoting the respective values of s and t.
The second line contains two space-separated integers denoting the respective values of a and b.
The third line contains two space-separated integers denoting the respective values of m and n.
The fourth line contains m space-separated integers denoting the respective distances that each apple falls from point a.
The fifth line contains n space-separated integers denoting the respective distances that each orange falls from point b.

Sample Input

7 11
5 15
3 2
-2 2 1
5 -6

Sample Output

1
1

# Provided by HackerRank; I slightly refactored the variables for better readability based on personal preference
s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
apple_tree_spot, orange_tree_spot = gets.strip.split(' ')
apple_tree_spot = apple_tree_spot.to_i
orange_tree_spot = orange_tree_spot.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apples = gets.strip
apples = apples.split(' ').map(&:to_i)
oranges = gets.strip
oranges = oranges.split(' ').map(&:to_i)

# My solution
apples_on_the_house = []
oranges_on_the_house = []

apples.each do |distance_traveled|
  apples_on_the_house << distance_traveled if (apple_tree_spot + distance_traveled).between?(s,t)
end

oranges.each do |distance_traveled|
  oranges_on_the_house << distance_traveled if (orange_tree_spot + distance_traveled).between?(s,t)
end

puts apples_on_the_house.count
puts oranges_on_the_house.count
