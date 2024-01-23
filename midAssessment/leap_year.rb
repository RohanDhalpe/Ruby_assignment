def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    true
  else
    false
  end
end

# Example
print "Enter year: "
year = gets.chomp.to_i

if leap_year?(year)
  puts "#{year} is leap year."
else
  puts "#{year} is not leap year."
end
