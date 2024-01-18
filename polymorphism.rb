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

c = Car.new
c.start()  # output : Car started

I = Innova.new
I.start()  # output : Innova started

S = Swift.new
S.start()  # output : Swift started

# Polymorphism is defined as the one entity can behaves differently In different situations
# In this example member function 'start()' behaves differently in different situations.
# Hence the function call depends on the type of object. 


