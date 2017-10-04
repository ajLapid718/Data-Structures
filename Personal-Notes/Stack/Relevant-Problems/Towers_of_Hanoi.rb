# Understanding Stacks and Recursion

# As an example of the isomorphism between stack-oriented algorithms and recursive algorithms, we will take a look at the classic "Tower of Hanoi" problem.

# According to legend, there is a Buddhist temple somewhere in the Far East, where monks have the sole task of moving disks from one pole to another while obeying certain rules about the moves they can make. There were originally 64 disks on the first pole; when they finish the task, the world will come to an end.

# As an aside, we like to dispel myths when we can. It seems that in reality, this puzzle originated with the French mathematician Edouard Lucas in 1883 and has no actual basis in eastern culture. What's more, Lucas himself named the puzzle the "Tower of Hanoi" (in the singular).

# So if you were worried about the world ending, don't worry on that account. Anyway, 64 disks would take 264-1 moves. A few minutes with a calculator will reveal that those monks would be busy for millions of years.

# But on to the rules of the game. (We'll explain this even though every first-year computer science student in the world has already seen the puzzle.) We have a pole with a certain number of varying-sized disks stacked on it; call this the source pole. We want to move all these disks to the destination pole, using a third pole (called the auxiliary pole) as an intermediate resting place. The catch is that you can only move one disk at a time, and you cannot ever place a larger disk onto a smaller one.

# The following example uses a stack to solve the problem. We use only three disks here because 64 would occupy a computer for centuries:

def towers2(list)
  while !list.empty?
    n, src, dst, aux = list.pop
    if n == 1
     puts "Move disk from #{src} to #{dst}"
    else
     list.push [n-1, aux, dst, src]
     list.push [1, src, dst, aux]
     list.push [n-1, src, aux, dst]
    end
  end
end

#   list = []
#   list.push([3, "a", "c", "b"])

#   towers2(list)
# Here's the output that's produced:

#   Move disk from a to c
#   Move disk from a to b
#   Move disk from c to b
#   Move disk from a to c
#   Move disk from b to a
#   Move disk from b to c
#   Move disk from a to c

# Of course, the classic solution to this problem is recursive. As we already pointed out, the close relationship between the two algorithms is no surprise because recursion implies the use of an invisible system-level stack. Here's an example:

def towers(n, src, dst, aux)
  if n == 1
    puts "Move disk from #{src} to #{dst}"
  else
    towers(n-1, src, aux, dst)
    towers(1, src, dst, aux)
    towers(n-1, aux, dst, src)
  end
end

#   towers(3, "a", "c", "b")
#   The output produced here is the same. And it may interest you to know that we tried commenting out the output statements and comparing the runtimes of these two methods. Don't tell anyone, but the recursive version is twice as fast.
