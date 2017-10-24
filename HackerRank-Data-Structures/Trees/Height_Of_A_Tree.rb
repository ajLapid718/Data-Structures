# Link: www.hackerrank.com/challenges/tree-height-of-a-binary-tree/problem
# Link: https://github.com/ajLapid718/HackerRank-30-Days-of-Code/blob/master/Day-22-Binary_Search_Trees.rb

# My solution in Ruby; Ruby is not currently supported for this particular problem
# Because this is the same exact problem as the one given in the 30 Days of Code, please refer to the second link
def height(root)
  return -1 if root.nil?

  left_height = height(root.left)
  right_height = height(root.right)

  if left_height > right_height
    left_height + 1
  else
    right_height + 1
  end
end

# My solution in Python 3; used this to submit an answer and to become more familiar with Python syntax and its API
def height(root):
  if root is None:
      return -1
  return max(height(root.left), height(root.right)) + 1
