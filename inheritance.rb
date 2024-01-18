# Base class
class Baseclass
    def initialize
      puts "Method of Base"
    end

    def Base_display
      puts "display of Base"
    end
end

# Derived class
class DerivedClass < Baseclass
    def Derived_display
       puts "display of Derived"
    end
end

# Creating object of derived class
obj = DerivedClass.new

# calling Derived class method
obj.Derived_display()

#calling Base class method
obj.Base_display()

