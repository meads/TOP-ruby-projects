

def bubble_sort(array)
  j = 1
  begin
    swapped = false
    puts "array pass #{j} -> #{array}"
    j += 1

    (array.length - 1).times do |i|
      puts "(left) #{array[i]} compare (right) #{array[i + 1]}"
      if array[i] > array[i + 1]
        puts "(swap) #{array[i]} and #{array[i + 1]}"
        array[i + 1], array[i] = array[i], array[i + 1]
        swapped = true
      end
    end  

  end while swapped
  
  array
end

numbers = [1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"

numbers = [2, 1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"

numbers = [6, 5, 4, 3, 2, 1]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"

numbers = [4, 3, 78, 2, 0, 2]
sorted = bubble_sort(numbers)
puts "sorted -> #{sorted}"