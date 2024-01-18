class Rectangle
   # constructor method
   def initialize(w,h)
      @width = w
      @height = h
   end

   # accessor methods
   def printWidth
      @width
   end

   def printHeight
      @height
   end
   
   def printArea
      @area = printWidth()*printHeight()
   end
   
end

# create an object
r = Rectangle.new(10, 20)

# use accessor methods
x = r.printWidth()
y = r.printHeight()
z = r.printArea()

puts "Width is : #{x}"
puts "Height is : #{y}"
puts "Area is : #{z}"

