#In this line we are definining the method cheese_and_crackers
def cheese_and_crackers(cheese_count, box_of_crackers)
#This line will print what the cheese_count is in a string when the method is run
  puts "You have #{cheese_count} cheeses!"
#This line will print what the box_of_crackers count is in a string when the method is run
  puts "You have #{box_of_crackers} boxes of crackers!"
#This string will always print when the method is run.
  puts "Man that's enough for a party!"
#This string will always print when the method is run.
  puts "Get a blanket."
end

#This string will always be printed
puts "We can just give the function numbers directly:"
#This line is the first line that gives vlaue to the variables in the method
#It is assigning a value of 20 to our first one cheese_count
#It is assigning a value of 30 to the second one box_of_crackers
#This line of code is the first time our method will run when our code is run
cheese_and_crackers(20, 30)

#This string will always be printed
puts "OR, we can use variables from our script:"
#Here we are assigning value to a new variable amount_of_cheese with a value of 10
amount_of_cheese = 10
#Similarly, we are assigning a value of 50 to a new variable amount_of_crackers
amount_of_crackers = 50
#This line is important because it is running the method for the second time
#cheese count is assigned the same value as amount_of_cheese
#box_of_crackers is assigned the same value as amount_of_crackers
#When the method is run, these values will be expressed
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#This line prints every time
puts "We can even do math inside too:"
#This line is important because it is calling for our method to be run a third time
#cheese_count is assigned a value of 10 + 20
#box_of_crackers is assigned a value of 5 + 6
cheese_and_crackers(10 + 20, 5 + 6)

#This string will always be printed
puts "And we can combine the two, variables and math:"
#This is important because it calls for our method to be run a 4th time
#cheese_count is assigned a value of amount_of_cheese (10) + 100
#box_of_crackers is assigned a value of amount_of_crackers (50) + 1000
cheese_and_crackers(amount_of_cheese +100, amount_of_crackers + 1000)
