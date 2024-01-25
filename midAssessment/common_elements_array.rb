# Write a program to find the common elements between two arrays.
def find_common_elements(array1, array2)
  common_elements = []

  array1.each do |element|
    if array2.include?(element)
      common_elements << element  # If element present then add it to common_elements array
    end
  end

  common_elements
end

# Example usage:
array1 = [1, 2, 3, 4, 5]
array2 = [3, 4, 5, 6, 7]

common_elements = find_common_elements(array1, array2)

puts "Common elements between array1 and array2: #{common_elements}"

# Alternative method

def find_common_elements(array1, array2)
  array1 & array2
end

# Example usage:
array1 = [1, 2, 3, 4, 5]
array2 = [3, 4, 5, 6, 7]

common_elements = find_common_elements(array1, array2)

puts "Common elements between array1 and array2: #{common_elements}"

