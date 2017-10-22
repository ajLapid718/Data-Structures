# Mergesort as a standalone function that accepts an array (without a proc) and incorporates a helper function
def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.length/2
  left = arr.take(mid)
  right = arr.drop(mid)

  merge_helper(merge_sort(left), merge_sort(right))
end

def merge_helper(left_arr, right_arr)
  sorted = []

  until left_arr.empty? || right_arr.empty?
    if left_arr.first <= right_arr.first
      sorted << left_arr.shift
    else
      sorted << right_arr.shift
    end
  end

  sorted + left_arr + right_arr
end

# Monkey-patching the Array class
class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x,y| x <=> y }
    return self if self.length <= 1

    mid = self.length / 2
    left = self.take(mid)
    right = self.drop(mid)

    Array.merge(left.merge_sort(&prc), right.merge_sort(&prc), &prc)
  end

  private

  def self.merge(left, right, &prc)
    sorted = []

    until left.empty? || right.empty?
      if prc.call(left, right) <= 0
        sorted << left.shift
      else
        sorted << right.shift
      end
    end

    sorted + left + right
  end
end
