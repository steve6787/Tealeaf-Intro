#Quiz 3

p "Exercise 1"
arr = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts ""
p "Exercise 2"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
p arr
arr << "Dino"
p arr

puts ""
p "Exercise 3"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
p arr
arr << "Dino" << "Hoppy"
p arr
#Alternate way
#arr.push("Dino").push("Hoppy")
#Alternate way 2
#arr.concat(%w(Dino Hoppy))

puts ""
p "Exercise 4"
str = "Few things in life are as important as house training your pet dinosaur."
str.slice!(38..71)
p str
#Better way
#str.slice!(0, str.index('house'))

puts ""
p "Exercise 5"
str = "The Flintstones Rock!"
p count = str.scan('t').count

puts ""
p "Exercise 6"
str1 = "Fred"
str2 = "Barney"
comparison = str1.size <=> str2.size
p comparison

puts ""
p "Exercise 7"
title = "Flintstone Family Members"
p title.center(40)

puts ""
p "Exercise 8"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort_by! { |v| v.length}
p arr
#Another way
#arr.sort! { |a,b| a.size <=> b.size }

puts ""
p "Exercise 9"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort_by! { |v| -v.length }
p arr
#Another way
#arr.sort! { |a,b| b.size <=> a.size }

puts ""
p "Exercise 10"
arr = %w( fred Barney Wilma betty BamBam Pebbles)
p arr.sort! { |a,b| a.casecmp(b) }