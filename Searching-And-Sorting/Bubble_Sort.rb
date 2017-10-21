def bubble_sort(arr)
  loop do
    flag = false

    arr[0...-1].each_index do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        flag = true
      end
    end

    break if flag == false
  end

  arr
end

# For potentially better readability
def bubble_sort(arr)
  loop do
    sorted = true

    arr[0...-1].each_index do |i|
      if arr[i] > arr[i+1]
        sorted = false
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end

    break if sorted == true
  end

  arr
end
