# Base class
class BaseClass
  def initialize
    puts "Method of Base"
  end

  def base_display
    puts "display of Base"
  end
end

# Derived class
class DerivedClass < BaseClass
  def derived_display
    puts "display of Derived"
  end
end

# Creating an object of the derived class
sample_obj = DerivedClass.new

# Calling the derived class method
sample_obj.derived_display()

# Calling the base class method
sample_obj.base_display()

