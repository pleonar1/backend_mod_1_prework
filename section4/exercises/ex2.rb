#This file contains work pertaining to Classes and Objects Part 1 in Part B
#Still using GoodDog but starting fresh

class GoodDog
  def initialize
    puts "This object was initialized"
  end
end

sparky = GoodDog.new

#This prints the string we wrote above
#We modified the class by adding an initialize method
#we refer to the initialize method as a constructor because it gets triggered every time we make a new object

#Instance Variables
#When defining a class we focus on states and behaviors
#Here we will make a new object and instantiate it with some state

class GoodDog
  def initialize(name)
    @name = name
  end
end

#The @ creates an instance variable.  This variable exists as long as the object exists
#it doesn't die once the initialize method is run, it lives on until the object is destroyed

sparky = GoodDog.new('Sparky')

#^ "Sparky" is being passed from the new method to the initialize method



#### Instance Methods ###
#^^ the previous code doesnt really do anything so we will add behaviors

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
end

sparky = GoodDog.new("Sparky")
sparky.speak
#Nothing happens when you run this because the speak method returned the string.
#if we need to print it then we put puts
puts sparky.speak
#like this


#We will now add another object to the GoodDog class and get him to bark

fido = GoodDog.new("Fido")
puts fido.speak
#All objects of the same class have access to the same behaviors
#This seems incredibly useful

#Now lets not just bark but say who did it

def speak
  "#{@name} says arf!"
end

puts sparky.speak
puts fido.speak

#^ the string will be printed with each object sequentially

####  Accessor Methods  ####

#If we wanted to print out only sparkeys name we will have to create a method for it

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new('Sparky')
puts sparky.speak #This method prints our string from speak
puts sparky.get_name #This method prints the name of our object

#This new method ^ is called a getter method
#If we wanted to change sparkey's name then we would have to use a setter method
#seen below
#get and set are syntax for getter methods and setter methods respectively I am pretty sure

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new('Sparky')
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"    #This is changing sparkys name
puts sparky.get_name
puts sparky.speak
#I tried running this last line and it prints the new name. very cool

#Setter method has different syntax'


####### More conventional way to write what we just wrote #######

class GoodDog
  def initialize(name)
    @name = name
  end

  def name    #This was changed from "get_name"
    @name
  end

  def name=(n)      #This was changed from "set_name"
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new('Sparky')
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name


#Sometimes these classes get so long
#because these methods are commonplace, ruby has a built in way to create these
#getter and setter methods for us using the attr_accessor method
#below is a refactoring of the above code with said method involved

class GoodDog
    attr_accessor :name

    def initialize(name)
      @name = name
    end

    def speak
      "#{@name} says arf!"
    end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

#attr_accessor takes a symbol as an arguement # all attr methods use symbols
#if you only want getter method use attr_reader
#if you only want setter method use attr_writer
#if there are more than one state use this syntax
attr_accessor :name, :height, :weight

##### Accessor methods in action#####

#In previous code above, the speak method referenced the @name instance vairiable
def speak
  "#{@name} says arf!"
end
#insteadmof referencing the instance variable directly, we want to use the name getter
#method from earlier. That is given to us now with attr_accessor
#change speak method to this

def speak
  "#{name} says arf!"
end
#we removed the @ symbol
#This means we are calling the instance method instead of the instance variable

attr_accessor :name, :height, :weight
#^this one line of code gives us 6 getter/setter instance methods
#name, name=, height, height=, etc...
#Now we want to create a new method that allows us to change several states at once
def change_info(n, h, w) #these three arguments correspond to the new name height and weight respectively
  @name = n
  @height = h
  @weight = w
end
#Our code now looks like it does below and we will make another method called info that displays states
#of the object

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

#we use the change_info method like this
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

#now we want change info to work directly with setter methods.  change the syntax to this
def change_info(n, h, w)
  name = n
  height = h
  weight = w
end
#We dropped the @
#This doesnt actually work because ruby thinks we are initializing local variables
#Ruby thinks all we did in change info is name local Variables
#we need to use self.variable so we update our code to this
def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end

def info
  "#{self.name} weighs #{self.weight} and is #{self.height} tall."
end

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info   #Now if ran with all previous code it should work the way we want

####### Exercises ######

class MyCar

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "I accelerate to #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park."
  end
end

sequoia = MyCar.new(2010, "Toyota Sequoia", "blue")
sequoia.speed_up(30)
sequoia.current_speed
sequoia.speed_up(40)
sequoia.brake(70)
sequoia.shut_down
