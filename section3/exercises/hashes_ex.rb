produce = {
  apples: 3,
  oranges: 1,
  carrots: 12
}
puts "There are #{produce['oranges']} oranges in the fridge."

##So I tried to use the symbol method and it ran but when it printed,
##The value was not printed in the string "There are   oranges in the fridge" is what I got
produce = {
  apples: 3,
  oranges: 1,
  carrots: 12
}
puts "There are #{produce[:oranges]} oranges in the fridge."

#I see now why it did not work before.  It is because I used a string in the first
#one instead of calling it as a symbol
#I actually tried hashing with symbols before I read ahead in the exercise because
#Ellen showed us how and I wanted to try it.  This was a good moment.




produce = {
  'apples' => 3,
  'oranges' => 1,
  'carrots' => 12
}
puts "There are #{produce['oranges']} oranges in the fridge."

#When I used the tradional method it ran smoothly.

produce["grapes"] = 221
produce
produce["oranges"] = 6
produce
produce.keys
produce.values
#This is just where I tried to write it horizontally like in this lesson.
produce = {apples: 3, oranges: 1, carrots: 12}
puts "There are #{produce[:oranges]} oranges in the fridge."
