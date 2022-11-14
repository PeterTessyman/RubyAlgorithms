# bubble sort using recursion
def swap arr, changed, i
	if i < arr.length - 1
		if arr[i] > arr[i + 1]
			arr[i], arr[i + 1] = arr[i + 1], arr[i]
			changed = true
		end
		i = i + 1
		arr, changed = swap arr, changed, i
	else
		return arr, changed
	end
end
def bubblr_sort_main arr, changed
	if changed == true
		changed = false
		i = 0
		arr, changed = swap arr, changed, i
		bubblr_sort_main arr, changed
	else
		return arr
	end
end
def bubblr_sort arr
	changed = true
	arr = bubblr_sort_main arr, changed
	return arr
end
