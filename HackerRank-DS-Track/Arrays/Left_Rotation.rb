# Link: https://www.hackerrank.com/challenges/array-left-rotation/problem

# A left rotation operation on an array of size n shifts each of the array's elements 1 unit to the left.
# For example, if 2 left rotations are performed on array [1,2,3,4,5], then the array would become [3,4,5,1,2].

# Given an array of n integers and a number, d, perform d left rotations on the array.
# Then print the updated array as a single line of space-separated integers.

def leftRotation(a, d)
    counter = 0

    while counter < d
        moving_piece = a.shift
        a << moving_piece
        counter += 1
    end

    print a.join(" ")
end

# def leftRotation(a,d)
#   print a.rotate(d).join(" ")
# end

n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = leftRotation(a, d)
print result.join(" ")
