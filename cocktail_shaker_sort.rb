class Cocktail_Shaker_Sort
    def sort arr
        loop do
            have_changes_been_made = false
            bubble = 0
            sink = arr.length - 1
            while bubble < arr.length - 1
                if arr[bubble] > arr[bubble + 1] then
                    arr[bubble], arr[bubble + 1] = arr[bubble + 1], arr[bubble]
                    have_changes_been_made = true
                end
                bubble += 1
            end
            unless have_changes_been_made == true
                break
            end
            while 0 < sink
                if arr[sink] < arr[sink - 1]
                    arr[sink], arr[sink - 1] = arr[sink - 1], arr[sink]
                    have_changes_been_made = true
                end
                sink -= 1
            end
            unless have_changes_been_made == true
                break
            end
        end
        return arr
    end
end