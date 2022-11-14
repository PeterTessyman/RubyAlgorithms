# ABOUT THE DEMO
# each algorithm is called individually and fed a unique array populated
# with randomly genrated integers
# output is printed to the terminal

require './bubble_sort.rb'
require './selection_sort.rb'
require './insertion_sort.rb'
require './quick_sort.rb'
require './merge_sort.rb'
require './cocktail_shaker_sort.rb'

# a simple RANDOM INTEGER ARRAY generator
def generate_array array_length, range_start, range_end
	arr = Array.new
	for i in 0 ... array_length
		arr.append rand range_start ... range_end
	end
	return arr
end

# PARAMETERS
ARR_LEN = 15
BOTTOM = -999
TOP = 1000

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Bubble:\t#{bubble_sort arr}\n"

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Coktal:\t#{cocktail_shaker_sort arr}\n"

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Quick:\t#{quick_sort arr}\n"

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Select\t#{selection_sort arr}\n"

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Insert:\t#{insertion_sort arr}\n"

arr = generate_array ARR_LEN, BOTTOM, TOP
print "Merge:\t#{merge_sort arr}\n"
