# Develop a program to find the largest element in an array.
def find_largest_element(arr)
  if arr.empty?
    return nil
  end

  largest_element = arr[0]

  arr.each do |element|
    if element > largest_element
      largest_element = element
    end
  end

  largest_element
end

# Example:
array = [3, 7, 1, 9, 4, 6, 2, 8]
result = find_largest_element(array)

puts result.nil? ? 'The given array is empty.' : "The largest element: #{result}"

# Alternative solution

def find_largest_element(arr)
  arr.reduce { |max, element| max > element ? max : element }
end

# Example:
array = [3, 7, 1, 9, 4, 6, 2, 8]
result = find_largest_element(array)

puts result.nil? ? 'The given array is empty.' : "The largest element: #{result}"

