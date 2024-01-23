#Implement a program to calculate the area of a circle, rectangle, or triangle based on user input.
class Area
  def initialize
    puts "Initializing in the base class"
  end

  def calculate_area
    puts "Calculating area in the base class"
    # overridden by subclasses
  end
end

class Circle < Area
  def initialize(radius)
    super()
    @radius = radius
  end

  def calculate_area
    Math::PI * @radius**2
  end
end

class Rectangle < Area
  def initialize(length, width)
    super()
    @length = length
    @width = width
  end

  def calculate_area
    @length * @width
  end
end

class Triangle < Area
  def initialize(base, height)
    super()
    @base = base
    @height = height
  end

  def calculate_area
    0.5 * @base * @height
  end
end

puts 'Choose a shape to calculate the area: '
puts '1. Circle'
puts '2. Rectangle'
puts '3. Triangle'

choice = gets.chomp.to_i

shape = case choice
when 1
  puts 'Enter the radius of the circle: '
  radius = gets.chomp.to_f
  Circle.new(radius)
when 2
  puts 'Enter the length of the rectangle: '
  length = gets.chomp.to_f
  puts 'Enter the width of the rectangle: '
  width = gets.chomp.to_f
  Rectangle.new(length, width)
when 3
  puts 'Enter the base of the triangle: '
  base = gets.chomp.to_f
  puts 'Enter the height of the triangle: '
  height = gets.chomp.to_f
  Triangle.new(base, height)
else
  puts 'Invalid choice. Enter a valid choice.'
  nil
end

if shape
  area = shape.calculate_area
  puts "The area of the chosen shape is: #{area}"
end
