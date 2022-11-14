class Quick_Sort
	# start at the left extreme and work inwards
	# when a value higher than pivot is found, break
	def scan_from_left arr, pivot
		scan = 0
		candidate = pivot
		while scan < pivot
			if arr[scan] > arr[pivot]
				candidate = scan
				break
			end
			scan += 1
		end
		return candidate
	end
	# start at the right extreme and work inwards
	# when a value lower than pivot is found, break
	def scan_from_right arr, pivot
		scan = arr.length - 1
		candidate = pivot
		while scan > pivot
			if arr[scan] < arr[pivot]
				candidate = scan
				break
			end
			scan -= 1
		end
		return candidate
	end
	# slice the array into 2 sub arrays and quick_sort them
	def slice arr, pivot
		# create first slice
		first_slice = arr.slice 0 ... pivot
		if first_slice.length > 1
			first_slice = self.sort first_slice
		end
		# generate second slice
		second_slice = arr.slice pivot ... arr.length
		if second_slice.length > 1
			second_slice = self.sort second_slice
		end
		# merge the first and second slices
		return first_slice + second_slice
	end
	# quick sort
	def sort arr
		# find pivot
		# pivot = arr.length / 2 # pivot in the middle
		# pivot = arr.length - 1 # pivot at the end
		pivot	= rand 0 ... arr.length # chose a random pivot
		# find left and right extemes
		left = 0
		right = arr.length - 1
		until left >= right
			# find candidates to swap
			left = self.scan_from_left arr, pivot # left of pivot
			right = self.scan_from_right arr, pivot # right of pivot
			# swap the left and right side elements
			arr[left], arr[right] = arr[right], arr[left]
		end
		# slice the partition into 2 sub-arrays
		return slice arr, pivot
	end
end