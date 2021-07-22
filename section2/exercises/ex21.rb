#Defines a method called add
def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end
#Defines a method called subtract
def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end
#defines a method called multiply
def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end
#defines a method called divide
def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end


puts "Let's do some math with just functions!"
#a = 30 and b = 5
age = add(30, 5)
# a = 78 and b = 4
height = subtract(78, 4)
# a = 90 and b = 2
weight = multiply(90, 2)
# a = 100 and b = 2
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


#Puzzle for extra credit?
puts "Here is a puzzle."
#Did this on a sheet of paper and was able to figure it out after ten of the longest minutes of my life lol
what = add(age, subtract(height, multiply(weight, divide(iq,2))))

puts "Thats becomes: #{what}. Can you do it by hand?"
