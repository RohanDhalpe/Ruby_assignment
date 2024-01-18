class Car
  def start
    puts "Car started"   
  end
end

class Innova < Car
  def start
    puts "Innova started"
  end
end

class Swift < Car
  def start
    puts "Swift started"
  end
end

car = Car.new
car.start()  # output: Car started

innova = Innova.new
innova.start()  # output: Innova started

swift = Swift.new
swift.start()  # output: Swift started

