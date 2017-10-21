def quicksort(arr)
  return [] if arr.empty?
  pivot_element = arr.first
  left_of_pivot, right_of_pivot = arr[1..-1].partition { |num| num <= pivot_element }
  quicksort(left_of_pivot) + [pivot_element] + quicksort(right_of_pivot)
end
