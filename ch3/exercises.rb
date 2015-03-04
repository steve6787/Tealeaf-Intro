puts ""
puts "Exercise 1 - use a method called greeting"
puts "Takes a name and prints the name + greeting"
def greeting (name)
  "Hello, " + name + ". How are you today?"
end

puts greeting("Steve")

#puts ""
#puts "Exercise 2"
#puts ""
#x = 2
#x = 2 returns => 2
#puts x = 2
#puts x = 2 returns => nil
#p name = "Joe"
#p name = "Joe" returns => "Joe"
#four = "four"
#four = "four" returns => "four"
#print something = "nothing"
#print something = "nothing" returns => nil

puts ""
puts "Exercise 3 - Multiply 2 numbers, return result to screen (50*2)"
def multiply (num1,num2)
  num1 * num2
end

puts multiply(50, 2)

puts ""
puts "Exercise 4/5 - What will the following code print to screen?"
#Still returns nil
def scream (words)
  words = words + "!!!!"
  puts words
end

scream("Yippee")
puts "Still returns nil"