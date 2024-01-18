class Rectangle
# constructor method
 def initialize(width, height)
  @width = width
  @height = height
end

# accessor methods
 def print_width
  @width
 end

 def print_height
  @height
 end

 def print_area
  @area = print_width() * print_height()
 end
end

# create an object
rectangle = Rectangle.new(10, 20)

# use accessor methods
rectangle_width = rectangle.print_width()
rectangle_height = rectangle.print_height()
rectangle_area = rectangle.print_area()

puts "Width is  : #{rectangle_width}"
puts "Height is : #{rectangle_height}"
puts "Area is   : #{rectangle_area}"
