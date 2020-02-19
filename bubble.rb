def bubble_sort(arr)
    i = 0
    j = 0
    while i < arr.size
        j = i+1
        
        unless i == arr.size-1
            while j < arr.size
                if arr[i] > arr[j]
                    temp = arr[i]
                    arr[i] = arr[j]
                    arr[j] = temp
                end
                j += 1
            end
        end    
        i += 1
    end
end

arr = [54,14,90,2,25]

bubble_sort(arr)

p arr

def bubble_sort_by(arr)
    i = 0
    j = 0
    while i < arr.size
        j = i+1
        while j < arr.size
            yield(arr[i], arr[j])
            j += 1
        end
        i += 1
    end
end

bubble_sort_by(arr) { |num, num1| puts "#{num}, #{num1}" }