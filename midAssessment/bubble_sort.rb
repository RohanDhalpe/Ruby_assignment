# Develop a program to sort an array using the bubble sort algorithm.
def bubble_sort(array)
  n = array.length

  (0..n - 1).each do |i|
    # Inner loop: Last i elements are already sorted, so we don't need to check them
    (0..n - i - 2).each do |j|
      # Swap if the element is greater than the next element
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
end

# Prompt the user for input
puts 'Enter elements for the array (separated by spaces):'

# Get input from the user
input = gets.chomp

# Split the input into an array of strings
user_array = input.split.map(&:to_i)

# Call the bubble_sort method
bubble_sort(user_array)

# Display the sorted array
puts "Sorted Array: #{user_array}"
