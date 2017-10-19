# Link: https://www.hackerrank.com/challenges/balanced-brackets/problem

# Sample Input

# {[()]}
# {[(])}
# {{[[(())]]}}

# Sample Output
# YES
# NO
# YES

# Explanation
# The string {[()]} meets both criteria for being a balanced string, so we print YES on a new line.
# The string {[(])} is not balanced, because the brackets enclosed by the matched pairs [(] and (]) are not balanced.
# The string {{[[(())]]}} meets both criteria for being a balanced string, so we print YES on a new line.

BRACES = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
    }

def isBalanced(expression)
    stack = []

    expression.chars.each do |element|
        if BRACES.has_key?(element)
            stack << element
        else
            if (BRACES[stack.last] == element)
                stack.pop
            else
                return "NO"
            end
        end
    end

    if stack.empty?
        return "YES"
    else
        return "NO"
    end
end

t = gets.strip.to_i
for a0 in (0..t-1)
    s = gets.strip
    result = isBalanced(s)
    puts result
end
