# Implement a program to check if a given string is a palindrome or not.
def palindrome?(string)
  if string == string.reverse
    return true
  else
    puts 'String is not a palindrome'
    return false
  end
end

# user input
puts 'Enter a string to check for palindrome:'
user_input = gets.chomp

# Check if the entered string is a palindrome or not
if palindrome?(user_input)
  puts 'The entered string is a palindrome.'
else
  puts 'The entered string is not a palindrome.'
end