def merge_sort arr
	start = 0
	finish = arr.length - 1

	while start < finish
		if arr[start] > arr[finish]
			arr[start], arr[finish] = arr[finish], arr[start]
		else
			start += 1
		end
	end

	first_slice = arr.slice 0 ... finish
	if first_slice.length > 1
		first_slice = merge_sort first_slice
	end
	
	second_slice = arr.slice finish ... arr.length
	if second_slice.length > 1
		second_slice = merge_sort second_slice
	end

	# merge
	return first_slice + second_slice
end
