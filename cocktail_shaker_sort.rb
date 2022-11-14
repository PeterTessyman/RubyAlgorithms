def cocktail_shaker_sort array
    loop do
        have_changes_been_made = false
        up = 0
        sink = array.length - 1
        while up < array.length - 1
            if array[up] > array[up + 1] then
                array[up], array[up + 1] = array[up + 1], array[up]
                have_changes_been_made = true
            end
            up += 1
        end
        unless have_changes_been_made == true
            break
        end
        while 0 < sink
            if array[sink] < array[sink - 1]
                array[sink], array[sink - 1] = array[sink - 1], array[sink]
                have_changes_been_made = true
            end
            sink -= 1
        end
        unless have_changes_been_made == true
            break
        end
    end
    return array
end