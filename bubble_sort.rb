def bubble_sort(input_arr)
  arr = input_arr.clone

  loop do

    sorted = true

    arr[0..-2].each_with_index do |num, idx|
      if num > arr[idx + 1]
        arr[idx, 2] = arr[idx, 2].reverse
        sorted = false # if a swap occurs the array isn't sorted
      end
    end

    break if sorted

  end

  arr
end

p bubble_sort([1, 2, 3, 4, 5]) # => [1, 2, 3, 4, 5]
p bubble_sort([5, 4, 3, 2, 1]) # => [1, 2, 3, 4, 5]
p bubble_sort([42, 1, 8, 65, 24, 43, 31, 90, 6]) # => [1, 6, 8, 24, 31, 42, 43, 65, 90]