# Iterative Version of Binary Search

def binary_search(arr, target)
  lower_bound = 0
  upper_bound = arr.length - 1

  while lower_bound <= upper_bound
    midpoint = (upper_bound + lower_bound)/2
    potential_match = arr[midpoint]

    if potential_match > target
      upper_bound = midpoint - 1
    elsif potential_match < target
      lower_bound = midpoint + 1
    else
      return midpoint
    end
  end

  return nil
end

=begin

Keep in mind that one of the constraints of binary search is that the array must be sorted.
Two analogies to keep in mind: searching for a particular person in a phonebook or searching for a word in a dictionary.

The lower_bound starts off as the value of the first index, which is 0 since arrays are zero-indexed.
The upper_bound starts off as the value of the last index, which is, as usual, the the length of the array subtracted by one.

A while loop will be the flavor of looping used in this case.
The lower_bound will never be greater than the upper_bound nor will the upper_bound ever be less than the lower_bound...unless the array does not contain the element.
If the lower_bound becomes equal to the upper_bound, then the target is either about to be be found or the whole array has been searched through...finding nothing; so the loop will break.
That is, if you have two possible pages left to go in the search, if page 1 does not have the target, then page 2 will either have it or it won't and the lower bound for that final search will be equivalent to the upper bound.
Whether page 2 has the target_element or not will determine if nil or the target index is returned.
After the loop ends, the return nil call at the tail-end is in place to relay that the array did not contain the target element.

=end

Stepping through this binary search might look like:

- [1,2,3,4,5,6,10,12], target = 10 # Initial array passed in; has a lower_bound of 0 and has an upper_bound of 7; let the target element be 10

- while lower_bound <= upper_bound # The conditions are satisfied since 0 is less than 7; therefore, the loop commences
- midpoint = (upper_bound + lower_bound)/2 # The midpoint variable = (0 + 7) / 2 which equals 3; initial_array[3] == 4
- potential_match = arr[midpoint] # Because binary search goes to the halfway point immediately and keeps doing so each and every iteration, it's fitting to declare the variable potential_match with this value

- if potential_match > target # This condition checks if we overshoot the target; this would happen if the target == 2 and the potential_match == 4; however, our target element is 10 so this does not get triggered
- then upper_bound = midpoint - 1

- if potential_match < target # This condition checks if we undershoot the target; this happens in our hypothetical case because target == 10 and potential_match is initial_array[midpoint] aka initial_array[3] which == 4
- then lower_bound = midpoint + 1 # Now we know two things: the target is in the second half of the array and the target is not in the first half of the array
                                  # We need to change the value of the lower_bound so that on the next iteration, anything lower than the current midpoint is out of the picture
                                  # The lower_bound (previously 0) is now going to have the value of midpoint (3) + 1 == 4
                                  # The potential_match on the next go-round will be initial_array[midpoint] aka 5
                                  # This successfully excludes all of the elements on one side of the array

- if potential_match == target # This condition checks if we hit the target spot-on; this would be like opening the phonebook to the exact page of the person we are looking for, whether on the first try or after all the halving it took to get ultimately arrive there
- return midpoint # Because of the nature of a zero-indexed array and indexing into an array, be mindful of returning the midpoint instead of the potential_match

# On the next run through, lower_bound = 4, upper_bound = 7, midpoint = 5, potential_match = 6; potential_match < 10; lower_bound = 6
# On the following run through, lower_bound = 6, upper_bound = 7, midpoint = 6, potential_match = 10; potential_match == 10; return midpoint aka 6

Stepping through this binary search might also look like:
- [1,2,3,4,5,6,10,12], target = 5
# On the first run through: lower_bound = 0, upper_bound = 7, midpoint = 3, potential_match = 4; potential_match < 5; next_lower_bound = 4
# On the second run through: lower_bound = 4, upper_bound = 7, midpoint = 5, potential_match = 6; potential_match > 5; next_upper_bound = 4
# On the following run through: lower_bound = 4, upper_bound = 4, midpoint = 4, potential_match aka arr[4] == 5

Stepping through this binary search might also look like:
- [1,2,3,4,5,6,10,12], target = 16
# On the first run through: lower_bound = 0, upper_bound = 7, midpoint = 3, potential_match = 4; potential_match < 16; next_lower_bound = 4
# On the second run through: lower_bound = 4, upper_bound = 7, midpoint = 5, potential_match = 6; potential_match < 16; next_lower_bound = 6
# On the third run through: lower_bound = 6, upper_bound = 7, midpoint = 6, potential_match = 10; potential_match < 16; next_lower_bound = 7
# On the fourth run through: lower_bound = 7, upper_bound = 7, midpoint = 7, potential_match = 12; potential_match < 16; next_lower_bound = 8
# The loop, in its genuine attempt to reach out of bounds, breaks because the lower_bound is greater than the upper_bound. Nil is appropriately returned.
