# In the below exercises, write code that achieves
# the desired result. To check your work, run this
# file by entering the following command in your terminal:
# `ruby section2/exercises/methods.rb`

# Example: Write a method that when called will print your name:
def print_name
  p "Severus Snape"
end

print_name

# Write a method that takes a name as an argument and prints it:
def print_name(name)
  p "ALbus Dumbledore"
end

print_name("Albus Dumbledore")

# Write a method that takes in 2 numbers as arguments and prints
# their sum. Then call your method three times with different arguments passed in:
def add(c, d)
  puts "This method will add #{c} + #{d}."
  return c + d
end

e = add(10, 20)
puts "the sum of 10 and 20 is #{e}."

f = add(20.192, 39.92673)
puts "The sum of 20.192 and 39.92673 is #{f}."

g = add(0.45, 5.87)
puts "The sum of 0.45 and 5.87 is #{g}."








# Write a method that takes in two strings as arguments and prints
# a concatenation of those two strings. Example: The arguments could be
# (man, woman) and the end result might output: "When Harry Met Sally".
# Then call your method three times with different arguments passed in.
def string_add(food, drink)
  puts "I really like to have #{drink} when enjoying my #{food}."
end
string_add("sushi", "sake")

def string_add(sandwich_1, sandwich_2 )
  puts "No one in their right mind would go to a baseball game without having a #{sandwich_1} or a #{sandwich_2}."
end
string_add("hamburger", "hotdog")

def string_add(coffee_1, coffee_2)
  puts "Some people like #{coffee_1}, but others prefer #{coffee_2}."
end
string_add("Starbucks", "Dunkin'")


#-------------------
# PART 3: Naming is Hard
#-------------------


# Naming is notoriously hard in programming. It is a skill to name a variable or function concisely enough that it is reasonable to type, but descriptive enough that others can infer the meaning.

# Look at the code you wrote for the previous YOU DO🎈 - what did you name the function, and why?
# What did you name each parameter, and why?

# EXPLAIN:
#So, for the first method, i kind of stole the name from one of the previous exercises
#because it seemed simple enough to convey what I wanted to do.  I named the arguements single
#letter variables to make it easier to look at.  For the second method, I called it string_add
#because what I was doing was adding strings to be printed inside of a longer string. it seemed natural to
#call it string_add
