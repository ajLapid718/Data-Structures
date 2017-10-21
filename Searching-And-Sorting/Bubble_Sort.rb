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
