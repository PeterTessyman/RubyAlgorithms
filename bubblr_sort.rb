def bubblr_sort arr
	i = 0
	return outer_loop arr, i
end

def inner_loop arr, i, j
	if j < i
		j =+ 1
		if arr[j] < arr[i]
			arr[i], arr[j] = arr[j], arr[i]
		end
		return inner_loop arr, i, j
	else
		return arr, i
	end
end

def outer_loop arr, i
	if i < arr.length
		j = i
		i =+ 1
		return inner_loop arr, i, j
	else
		return outer_loop arr, i
	end
end
