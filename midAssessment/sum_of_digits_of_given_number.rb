# Design a program to calculate the sum of digits of a given integer
def sum_of_digits(number)
  sum = 0

  # Loop through each digit
  while number != 0
    sum += number % 10  # Add last digit to the sum
    number /= 10        # Remove the last digit
  end

  sum
end

# Example:
print 'Enter an integer: '
user_input = gets.chomp.to_i

result = sum_of_digits(user_input)

puts "Sum of digits: #{result}"
