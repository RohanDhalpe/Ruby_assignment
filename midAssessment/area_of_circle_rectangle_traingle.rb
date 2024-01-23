def calculate_circle_area(radius)
  return Math::PI * radius**2
end

def calculate_rectangle_area(length, width)
  return length * width
end

def calculate_triangle_area(base, height)
  return 0.5 * base * height
end

puts "Choose a shape to calculate the area: "
puts "1. Circle"
puts "2. Rectangle"
puts "3. Triangle"

choice = gets.chomp.to_i

case choice
when 1
  puts "Enter the radius of the circle: "
  radius = gets.chomp.to_f
  area = calculate_circle_area(radius)
  puts "The area of the circle is: #{area}"
when 2
  puts "Enter the length of the rectangle: "
  length = gets.chomp.to_f
  puts "Enter the width of the rectangle: "
  width = gets.chomp.to_f
  area = calculate_rectangle_area(length, width)
  puts "The area of the rectangle is: #{area}"
when 3
  puts "Enter the base of the triangle: "
  base = gets.chomp.to_f
  puts "Enter the height of the triangle: "
  height = gets.chomp.to_f
  area = calculate_triangle_area(base, height)
  puts "The area of the triangle is: #{area}"
else
  puts "Invalid choice. Enter valid choice"
end
