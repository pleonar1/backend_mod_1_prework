#This is where we define the variables
people = 30
cars = 40
trucks = 15

#If cars are greater than people, prints "We should take the cars."
if cars > people
  puts "We should take the cars."
#This is similair to the previous, but it has to be true and the previous one false
#In order to print "We should not take the cars."
elsif cars < people
  puts "We should not take the cars."
#both the previous ones must be false in order to print this.
else
  puts "We can't decide."
end
#My previous comments apply to the next blocks as well
if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay at home then."
end
#It seems like elsif is giving a printing option to the opposite of the if statement
#It seems like else is what we print if neither are true
