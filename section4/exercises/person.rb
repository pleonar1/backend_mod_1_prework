# Create a person class with at least 2 attributes and 2 behaviors.
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

class Person 
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def says_name
    puts "My name is #{@name}"
  end

  def says_age
    puts "I am #{@age} years old"
  end
end

paul = Person.new("Paul", 27)
puts paul.says_name
puts paul.says_age
