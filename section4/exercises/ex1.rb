#This file contains work for What Are Objects
#And Classes Define Objects from LaunchSchool


"hello".class
#When run in irb, ^this will output => String
"world".class
#Same as ^^^

class GoodDog
end

sparky = GoodDog.new
#^Here we have created an instance of the GoodDog class and stared
#it in the variable sparky
#You could also say that we instantiated an object called sparky from
#the class GoodDog

#next, we want our GoodDog class to have a speak method, but we have
#other classes we want to use a speak method with too. heres how it wokrs


#Ignore up here^^^ Think like your're starting frssh and making GoodDog for the first time

#Remember to use camel case on module (I think) and class syntax
module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")      # => this will print Arf! when sparky speaks
bob = HumanBeing.new
bob.speak('Hello!')       # => this will print the string Hello! when bob speaks


#rewriting the program again to see what the method lookup path is for GoodDog classes

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''#  <===This creates a line break in the code.  You learn something new all the time
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors


#Exercise 1
class MyCar
end

toyota = MyCar.new

#Exercise 2
#A module is a behavior that is usable in classes and mixed in with the include method
module Drive
end

class MyCar
  include Drive
end

toyota = MyCar.new
