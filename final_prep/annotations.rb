# Add your annotations, line by line, to the code below using code comments.
# Try to focus on using correct technical vocabulary.
# Use the # to create a new comment

# Build a Bear
#This line is where we are defnining the method build_a_bear and listing the arguments
def build_a_bear(name, age, fur, clothes, special_power)
  #Here we are assigning a string value to greeting and calling for the name to be interpolated into the string when the function is run
  greeting = "Hey partner! My name is #{name} - will you be my friend?!"
  #Here we are assigning an array value to demographics
  demographics = [name, age]
  #Here we are assigning a string value to power_saying and iterpolating special_power into the string
  power_saying = "Did you know that I can #{special_power}?"
#Here we are defining a hash and putting it inside our method
  built_bear = {
#The key is basic_info and the value is demographics
    'basic_info' => demographics,
#The key is clothes and the value is clothes
    'clothes' => clothes,
#The key is exterior and the value is fur
    'exterior' => fur,
#the key is cost and the value is a float of 49.99
    'cost' => 49.99,
#The key is sayings and the value is an array with both variables and a string
    'sayings' => [greeting, power_saying, "Goodnight my friend!"],
#the key is is_cuddly and it is assigned the value of a boolean
    'is_cuddly' => true,
#Our hash inside the function is closed off
  }
#execution flow has stopped
  return built_bear
#end of defining the method
end
#Here we are assinging value to the arguements (name, age, fur, clothes, special_power)
build_a_bear('Fluffy', 4, 'brown', ['pants', 'jorts', 'tanktop'], 'give you nightmares')
#he we are reassigning
build_a_bear('Sleepy', 2, 'purple', ['pajamas', 'sleeping cap'], 'sleeping in')


# FizzBuzz
#we are defining a method called fizzbuzz and assigning arguments
def fizzbuzz(num_1, num_2, range)
  #Here we are trying to set a loop that will do something to each argument
  (1..range).each do |i|
#We are saying that if 1 percentage num_1 and i percentage num2 are both equal to 0,
    if i % num_1 === 0 && i % num_2 === 0
      #Then we print the string below
      puts 'fizzbuzz'
###OR if i percentage num_1 is the only one equal to 0 then,
    elsif i % num_1 === 0
#print this string instead  
      puts 'fizz'
#OR if i percentage num_2 is the only one equal to 0 then,
    elsif i % num_2 === 0
#print this string instead
      puts 'buzz'
#If all else cannot be done and i is all we have,
    else
#i is printed to the console
      puts i
    end
  end
end
#we are adding value to the arguments and calling the function
fizzbuzz(3, 5, 100)
fizzbuzz(5, 8, 400)
