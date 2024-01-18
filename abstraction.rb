# Abstraction means showing only essential functionality to the user and hiding unnecessary information from the user.

class Car
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def start_engine
    puts "Engine started!"
  end

  def stop_engine
    puts "Engine stopped."
  end

  def accelerate
    puts "Accelerating..."
  end
end

# Using the Car class
my_car = Car.new("Toyota", "Camry", 2023)
my_car.start_engine
my_car.accelerate  
my_car.stop_engine

