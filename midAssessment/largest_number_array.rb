# Develop a program to find the largest element in an array.
def find_largest_element(arr)
  if arr.empty?
    return nil
  end

  largest_element = arr[0]

  arr.each do |element|
    if element >largest_element
      largest_element = element
    end
  end

  largest_element
end

# Example:
array = [3, 7, 1, 9, 4, 6, 2, 8]
result = find_largest_element(array)

if result.nil?
  puts "The given array is empty."
else
  puts "The largest element : #{result}"
end
