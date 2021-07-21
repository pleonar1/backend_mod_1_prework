people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats! the world is doomed!"
end

if people > cats
  puts "Not many cats! the world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end


dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end

#The if statement seems to be like a "If, then" statement.  Like if this is true then do this
#I un-indented one of my "puts" and it still ran the same.  It seems to be a visual tool to indent
