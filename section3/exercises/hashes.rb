# In the below exercises, write code that achieves
# the desired result. To check your work, run this
# file by entering the following command in your terminal:
# `ruby section3/exercises/hashes.rb`

# Example: Write code that prints a hash holding grocery store inventory:
foods = {apples: 23, grapes: 507, eggs: 48}
p foods

# Write code that prints a hash holding zoo animal inventory:
zoo = {
  monkeys: 50,
  lions: 14,
  tigers: 49,
  bears: 37
 } #OH MY!
p zoo

# Write code that prints all of the 'keys' of the zoo variable
# you created above:
puts zoo.keys

# Write code that prints all of the 'values' of the zoo variable
# you created above:
puts zoo.values

# Write code that prints the value of the first animal of the zoo variable
# you created above:
puts "#{zoo[:monkeys]}"

# Write code that adds an animal to the zoo hash.
# Then, print the updated hash:
zoo["zubat"] = 30

p zoo
#This ^ took me a lot longer than I thought it would
#I tried to add it as a symbol but i just gave up and added as a string
#will try to add as a symbol later on

#-------------------
# Part 2: Email
#-------------------


# Think about all the pieces of information associated with one single email in your inbox.
# It has a sender, a subject, ...

# Declare a variable that stores hash. Each key should be an attribute of an email and each
# value should be some appropriate value for that key. Work to have at least 5 key-value pairs.

# Write code that prints your email hash to the terminal.

paul_email = {
  inbox: 375,
  junk: 1987,
  sent: 27,
  drafts: 2,
  unread: 3,
  docs: 32
}
puts paul_email

# Write code that prints all of the 'keys' of the email hash
# you created above:
puts paul_email.keys

# Write code that prints all of the 'values' of the email hash
# you created above:
puts paul_email.values


#-------------------
# Part 3: Many Emails - OPTIONAL EXTENSION
#-------------------

# LONG EXAMPLE:
# Now that we've learned about Objects AND Arrays, we can combine them.

# Check out the following example of an array of Instagram posts:


# posts = ["image at beach", "holiday party", "adorable puppy", "video of cute baby"];


# Frankly, that was a very simplified version of the Array the Instagram developers have
# written and work with. Still probably slightly simplified as we don't know what their code
# actually looks like, but it may look more like this:


posts = [
  {
    'image_src' => "./images/beach.png",
    'caption' => "At the beach with my besties",
    'timestamp' => "4:37 PM August 13, 2019",
    'number_likes' => 0,
    'comments' => []
  },
  {
    'image_src' => "./images/holiday-party.png",
    'caption' => "What a great holiday party omg",
    'timestamp' => "11:37 PM December 31, 2019",
    'number_likes' => 13,
    'comments' => []
  }
]

puts posts
puts posts[0]


# The code snippet above shows an Array with 2 elements. Each element in an
# Object Literal. Each of those Object Literals has 4 key-value pairs. This may LOOK
# a bit daunting - it's OK! You don't need to be 100% comfortable with this, but it's
# good to have some exposure before going into Mod 1.


# YOU DO: Create an array of at least 3 EMAIL Object Literals, using the same
# key-value pairs you used in your email Object above.
# Then, log the email Array to the console.

paul_email = [
  {
    inbox: 375,
    unread: 3,
    junk: 1987,

  },
  {
    sent: 27,
    drafts: 2,
    opened_by_sender: 30
  },
  {
    docs: 32,
    doc_drafts: 4,
    word_docs: 16,
    power_point: 16
  }

]
puts paul_email

#I have no idea if I did this right but I tried.
#To clarify, I separated my inbox, sent, and google docs into three hashes inside an Array
#Thats what I understood the assignment to be but I will redo it if thats wrong
