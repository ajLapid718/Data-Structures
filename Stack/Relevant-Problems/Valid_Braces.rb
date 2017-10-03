# Write a function called validBraces that takes a string of braces, and determines if the order of the braces is valid. validBraces should return true if the string is valid, and false if it's invalid.
#
# This Kata is similar to the Valid Parentheses Kata, but introduces four new characters. Open and closed brackets, and open and closed curly braces. Thanks to @arnedag for the idea!
#
# All input strings will be nonempty, and will only consist of open parentheses '(' , closed parentheses ')', open brackets '[', closed brackets ']', open curly braces '{' and closed curly braces '}'.
#
# What is considered Valid? A string of braces is considered valid if all braces are matched with the correct brace.
# For example:
# '(){}[]' and '([{}])' would be considered valid, while '(}', '[(])', and '[({})](]' would be considered invalid.
#
# Examples:
# validBraces( "(){}[]" ) => returns true
# validBraces( "(}" ) => returns false
# validBraces( "[(])" ) => returns false
# validBraces( "([{}])" ) => returns true

BRACES = { "{" => "}", "[" => "]", "(" => ")" }

def validBraces(braces)
  stack = []

  braces.chars.each do |brace|
    stack << brace if BRACES.key?(brace) # Push all opening braces
    return false if BRACES.key(brace) && BRACES.key(brace) != stack.pop # If we have a closing brace at the very beginning, an opening brace at the very end, or if there are no matches for this brace, then return false
  end                                                                   # The pop action is going to be constantly called. If the stack is empty by the end, then everything paired up, and that validates the braces.

  stack.empty?
end

# Alternatively

def validBraces(braces)
  pairs = {
    ")" => "(",
    "]" => "[",
    "}" => "{"
  }

  stack = []

  braces.chars.each { |par|
    case par
      when "(", "[", "{" then stack << par
      when ")", "]", "}" then return false if stack.pop != pairs[par]
    end
  }

  stack.empty?
end

# Preferred Solution

BRACES = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}
 
OPENING_BRACES = BRACES.keys
CLOSING_BRACES = BRACES.values
 
def validBraces(braces)
  stack  = []
 
  braces.chars.each do |element|
    if OPENING_BRACES.include?(element)
      stack << element
    else
      if BRACES[stack.last] == element
        stack.pop 
      else
        return false
      end
    end
  end

  stack.empty?
end

# Preferred Solution Annotated

BRACES = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}
 
OPENING_BRACES = BRACES.keys
CLOSING_BRACES = BRACES.values
 
def validBraces(braces)
  stack  = []
 
  braces.chars.each do |element|
    if OPENING_BRACES.include?(element) # We'll accept most (we'll catch a terminal opening brace toward the end) opening braces to start the comparisons/pair checking
      stack << element # An opening brace is now at the top of the stack (ideally)
    else # In the event of a closing brace...
      if BRACES[stack.last] == element # ...we compare the closing brace (element) to BRACES[stack.last] which will output a value (the closer counterpart) from a key-value pair in the BRACES hash
        stack.pop # We remove from the top of the stack if this closing brace correctly pairs
      else # If the element is a closing brace AND it does not pair then...
        return false #...return false. This is necessary in the case when an unopened closing brace remains validBraces("())") or validBraces("()]")
      end
    end
  end

  stack.empty? # If the stack is empty, then that means that everything paired successfully (everything was correctly popped and everything that wasn't supposed to enter did not enter), hence they were valid braces.
end

# Explanation via GeeksForGeeks.org

# Algorithm:

# 1) Declare a character stack S.
# 2) Now traverse the expression string exp.
#     a) If the current character is a starting bracket (‘(‘ or ‘{‘ or ‘[‘) then push it to stack.
#     b) If the current character is a closing bracket (‘)’ or ‘}’ or ‘]’) then pop from stack and if the popped character is the matching starting bracket then fine...else the parentheses are not balanced.
# 3) After complete traversal, if there is some starting bracket left in stack then it is “not balanced”