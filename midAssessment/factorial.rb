# Write a program to calculate the factorial of a given number.
print "Enter a number: "
number = gets.chomp.to_i

factorial = 1

if number == 0
  puts "Could not find the factorial of zero."
else
  count = 1
  while count <= number
    factorial = factorial * count
    count += 1
  end
end

puts "Factorial of #{number} is #{factorial}"
