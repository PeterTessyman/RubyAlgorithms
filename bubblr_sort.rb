# bubble sort using recursion
class BubblR_Sort
	def swap arr, changed, i
		if i < arr.length - 1
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				changed = true
			end
			i = i + 1
			arr, changed = self.swap arr, changed, i
		else
			return arr, changed
		end
	end
	def sort_main arr, changed
		if changed == true
			changed = false
			i = 0
			arr, changed = self.swap arr, changed, i
			self.sort_main arr, changed
		else
			return arr
		end
	end
	def sort arr
		changed = true
		arr = sort_main arr, changed
		return arr
	end
end