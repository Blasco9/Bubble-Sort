def bubble_sort(arr)
  i = 0
  j = 0
  while i < arr.size
    j = i + 1
    while j <= arr.size - 1
      if arr[i] > arr[j]
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
      j += 1
    end
    i += 1
  end
  arr
end

arr = [54, 14, 90, 2, 25]

p bubble_sort(arr)

arr1 = %w[hi hello hey]

def bubble_sort_by(arr)
  i = 0
  j = 0
  while i < arr.size
    j = i + 1
    while j < arr.size
      result = yield(arr[i], arr[j])
      if result.positive?
        temp = arr[j]
        arr[j] = arr[i]
        arr[i] = temp
      end
      j += 1
    end
    i += 1
  end
  arr
end

bubble = bubble_sort_by(arr1) do |num, num1|
  num.length - num1.length
end

p bubble
