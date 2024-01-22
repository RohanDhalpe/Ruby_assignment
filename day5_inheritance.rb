# Animal class
class Animal
  def initialize(name)
    puts "#{@name} makes a sound"
  end

  def speak
    puts "#{@name} makes a sound"
  end
end

# Dog class inheriting from Animal
class Dog < Animal
  def bark
    puts "#{@name} barks loudly!"
  end
end

# Cat class inheriting from Animal
class Cat < Animal
  def meow
    puts "#{@name} meows softly."
  end
end

# Creating instances of the classes
dog = Dog.new("Buddy")
cat = Cat.new("Whiskers")

# Calling methods on instances
dog.speak
dog.bark

cat.speak
cat.meow

