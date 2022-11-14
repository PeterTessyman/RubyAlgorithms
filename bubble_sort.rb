def bubble_sort arr
	loop do
		changed = false
		for i in 0 ... arr.length - 1
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				changed = true
			end
		end
		if changed == false
			break
		end
	end
	return arr
end
