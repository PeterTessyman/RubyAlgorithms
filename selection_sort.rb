# find the lowest value in the array
def find_lowest arr
	scan = 0
	candidate = 0
	while scan < arr.length
		if arr[scan] < arr[candidate]
			candidate = scan
		end
		scan = scan + 1
	end
	return candidate
end
# move the lowest value to the start
def select arr
	lowest = find_lowest arr
	arr[0], arr[lowest] = arr[lowest], arr[0]
	return arr
end
# selection sort
def selection_sort arr
	sorted = Array.new
	countdown = arr.length
	while countdown > 0
		arr = select arr
		sorted.append arr[0]
		arr = arr.drop 1
		countdown = countdown - 1
	end
	return sorted
end
