# Implement a program to check if a given string is a palindrome or not.
def palindrome?(string)
  if string == string.reverse
     true
  else
    puts 'String is not a palindrome'
     false
  end
end

# user input
puts 'Enter a string to check for palindrome:'
user_input = gets.chomp

# Check if the entered string is a palindrome or not
puts palindrome?(user_input) ? 'The entered string is a palindrome.' : 'The entered string is not a palindrome.'

