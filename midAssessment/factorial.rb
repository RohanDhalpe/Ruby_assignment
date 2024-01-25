# Write a program to calculate the factorial of a given number.
print 'Enter a number: '
number = gets.chomp.to_i

factorial = 1

if number == 0
  puts 'Factorial of 0 is 1'
else
  count = 1
  while count <= number
    factorial *= count
    count += 1
  end
  puts "Factorial of #{number} is #{factorial}"
end

# Alternative method

print 'Enter a number: '
number = gets.chomp.to_i

factorial = (1..number).reduce(1, :*)

puts "Factorial of #{number} is #{factorial}"

