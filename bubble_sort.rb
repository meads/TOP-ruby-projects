def bubble_sort(array)
  loop do
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i + 1], array[i] = array[i], array[i + 1]
        swapped = true
      end
    end
    break unless swapped
  end

  array
end

numbers = [1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"    # sorted -> [1]

numbers = [2, 1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"    # sorted -> [1, 2]

numbers = [6, 5, 4, 3, 2, 1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"    # sorted -> [1, 2, 3, 4, 5, 6]

numbers = [4, 3, 78, 2, 0, 2]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"    # sorted -> [0, 2, 2, 3, 4, 78]
