the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes through a list
#in a more traditional style found in other languages
#I rewrote this in the .each do form and it ran the same
the_count.each do |number|
  puts "This is count #{number}"
end

#same as above but in a more Ruby style.  These next two are preffered
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

#this goes through mixed lists
change.each {|i| puts "I got #{i}" }

#we can also build lists, first start with an empty list
elements = []

#then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  #pushes the i variable on the end of the list
  elements.push(i)
end

#now we can print them
elements.each {|i| puts "Element was: #{i}" }

#Always use the .each because its widely used and more respected
#Range operator: the .. for inclusive range and ... excludes the specified high value

#Why is a for-loop able to use a variable that isn't defined yet?
#The variable is defined by the for-loop when it starts, initializing it to the current element of the loop iteration each time through.
#^ this question helped me understand
