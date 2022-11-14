def insertion_sort arr
	scan = arr.length - 1
	while scan != 0
		if arr[scan] < arr[scan - 1]
			arr[scan], arr[scan - 1] = arr[scan - 1], arr[scan]
			scan = arr.length - 1
			else
				scan = scan - 1
			end
		end
	return arr
end
