# Recursive Version of Binary Search

def binary_search(arr, target)
  return nil if arr.empty?
  potential_index = arr.length / 2

  case target <=> arr[potential_index]
  when -1
    binary_search(arr.take(potential_index), target)
  when 0
    potential_index
  when 1
    result = binary_search(arr.drop(potential_index + 1), target)
    result.nil? ? nil : (potential_index + 1)
  end
end

=begin

There is a more thorough and detailed breakdown of the nature of BSearch in Binary_Search_Part_One.rb where the iterative version of binary search is housed.
We return nil if the array is initially empty or if the array, after all of the taking and dropping, is empty.
Regardless, an empty array will signify that the target was absent from the array.
Keeping the themes of a phonebook search or dictionary search in mind.
The potential_index is established as the midpoint of the array or the halfway point of the phonebook.

The switch statement makes for a cleaner setup, but the true focal point here is the spaceship operator.

If the target_element is less than the value of the element at the midpoint index, return -1.
  - This means that the target_element is somewhere on the left side of the array.
  - We need to do another binary search, this time from the first element to the midpoint.

If the target_element == the value of the element at the possible_index/probe_index, then we return 0.
  - This means that the target_element was found and so we return the midpoint which corresponds to the output we are looking for, an index.

If the target_element is greater than the value of the element at the midpoint index, return 1.
  - This means that the target_element is somewhere on the right side of the midpoint/partition.
  - We need to do another binary_search, this time from the element after the midpoint to the tail-end.
  - Ultimately, we'll end up with either an empty array, in which case we should return nil or...
  - ...we'll end up with a match, in which case we should return the potential_index plus [the amount it was offsetted by] which is 1.

=end
