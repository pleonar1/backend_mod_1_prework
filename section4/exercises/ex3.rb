##Contains work for objects, attributes , and methods

#defining the class "student"
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi, I'm #{first_name}!"
  end
end

#This class doesn't represent a student necessarily, but more like the idea of what a student is like
#We make an instance of the class to represent an actual Student
#If we runb this file we get no output
#We need to create an instance of this class

paul = Student.new
paul.first_name = "Paul"
paul.introduction


#####Method arguments
#Some methods take one or more arguements that telkl them HOW to do whhat they ar esupposed to do
#LEts try to make paul introduce himself to katrina
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end
end

paul = Student.new
paul.first_name = "Paul"
paul.introduction('Katrina')

#Everytime you call a method you get a return value which means you get a value in response
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

paul = Student.new
paul.first_name = "Paul"
puts "Paul's favorite number is #{paul.favorite_number}."
#7 gets interpolated into the string
