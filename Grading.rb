puts "What is your grade? "
grade = gets.chomp.to_i

case grade
when 1..5
  puts "Elementary"
when 6..8
  puts "Middle School"
when 9..12
  puts "High School"
else
  puts "College"
end

