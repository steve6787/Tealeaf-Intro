#Quiz 1

p "Exercise 1"
arr = [1, 2, 2, 3]
arr.uniq

puts arr  # => what does this print out?

puts ""
# "Exercise 2"
#Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
#! - Actually Modifies hash or array / ? - Checks to see if value is contained
#1. what is != and where should you use it? != is does not equal (if statements)
#2. put ! before something, like !user_name - turn object into their opposite boolean equivalent
#3. put ! after something, like str.gsub()! - turn object into their opposite boolean equivalent
#4. put ? before something - if...else
#5. put ? after something - if...else
#6. put !! before something, like !!user_name - turn an object into their boolean equivalent

p "Exercise 3"
str = "Few things in life are as important as house training your pet dinosaur."
str.gsub! 'important', 'urgent'
p str

puts ""
p "Exercise 4"
p "The Ruby Array class has several methods for removing items from the array."
p "Two of them have very similar names. Let's see how they differ:"
puts "arr = [1, 2, 3, 4, 5]"
puts ""
p "What would the following return?"
puts "arr.delete_at(1)"
p "Would delete whatever is at index 1, so in this case 2"
puts "arr.delete(1)"
p "Would actually delete the number 1"

puts ""
p "Exercise 5"
p "Determine if 42 is between 10 and 100 (use Ruby's range object)"
case 42
when 10..100
  puts "This number is between 10 and 100"
end

puts ""
p "Exercise 6"
puts "Add Four score and in front of the str and show how to do it 2 ways"
str = "and seven years ago"
s = str
s.prepend("Four score ")
p s
str = "and seven years ago"
a = str
a.insert(0, 'Four score ')
p a

puts ""
p "Exercise 8"
arr = ["Fred", "Wilma"]
arr << ["Barney", "Betty"]
arr << ["BamBam", "Pebbles"]
p arr
arr.flatten!
p arr

puts ""
p "Exercise 9"
puts "Get an array with Barneys name and number"
arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
a = arr_hash.select { |k,v| k == 'Barney'}
p a

puts ""
p "Exercise 10"
arr_hash = {}
arr.each_with_index do |value, index|
  arr_hash[value] = index
end
p arr_hash