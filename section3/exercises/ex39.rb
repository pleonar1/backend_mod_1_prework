#I will create mapping of a state to abbreviation
states = {
  'Orgeon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

#Now we will create a basic set of states and some cities in them
cities = {
  'CA' => 'San Fransisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

#Now lets add some more cities fam
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#print out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR state has: #{cities['OR']}"

#print some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#Print by using the state then cities ?dict?
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#Print every state's abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

#Print every city in the state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

#Now we will try to do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city#{city}"
end

puts '-' * 10
#Ruby will print nil when something isnt in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end

# default values using //= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is #{city}"

#Lol when I tried to run this the first time it broke and I had no idea why.
#A coffee and a candy bar and 15 minutes later i realized my variable on line 50 was "states" instead of state
#I'm not sure if this is right, but I could see things getting lost in a hash if you weren't paying attention you could break the code
