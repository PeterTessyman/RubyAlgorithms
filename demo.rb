# ABOUT THE DEMO
# each algorithm is called individually and fed a unique array populated
# with randomly genrated integers
# output is printed to the terminal

require './bubble_sort.rb'
require './bubblr_sort.rb'
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
ARR_LEN = 10
BOTTOM = 0
TOP = 1_000_000_000

bubble = Bubble_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Bubble:\t#{bubble.sort arr}\n"

bubblr = BubblR_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "BubblR:\t#{bubblr.sort arr}\n"

cocktail_shaker = Cocktail_Shaker_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Coktal:\t#{cocktail_shaker.sort arr}\n"

quick = Quick_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Quick:\t#{quick.sort arr}\n"

selection = Selection_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Select\t#{selection.sort arr}\n"

insertion = Insertion_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Insert:\t#{insertion.sort arr}\n"

merge = Merge_Sort.new
arr = generate_array ARR_LEN, BOTTOM, TOP
print "Merge:\t#{merge.sort arr}\n"
