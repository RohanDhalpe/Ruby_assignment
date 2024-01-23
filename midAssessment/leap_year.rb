# Design a program to check if a given year is a leap year or not.
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

# Example:
print 'Enter year: '
year = gets.chomp.to_i

if leap_year?(year)
  puts "#{year} is a leap year."
else
  puts "#{year} is not a leap year."
end
