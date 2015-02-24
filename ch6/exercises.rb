puts "Exercise 1"
arr = [1,3,5,7,9,11]
num = 3
puts "Does the array include a 3?"
if arr.include?(num)
  puts "Array includes #{num}"
else
  puts "Array does not include #{num}"
end

puts ""
puts "Exercise 3"

arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr.last.first

puts ""
puts "Exercise 4"
puts "The arrary in this example contains -> [15,7,18,5,12,8,5,1]"
puts ""
arr = [15,7,18,5,12,8,5,1]
puts "arr.index(5) will put the index location, of the first 5 it finds."
puts "In this case, the first index of 5 in the array, is 3"
puts arr.index(5)
puts "arr[5] will show whatever is in the 5th index spot, in this case 8"
puts arr[5]

puts ""
puts "Exercise 6"
puts ""
puts "The below code will error out. How do you fix it?"
puts "names = ['bob', 'joe', 'susan', 'margaret']"
puts "names['margaret'] = 'jody'"
puts ""
puts "Change 2nd line to -> names[3] = 'jody'"

puts ""
puts "Exercise 7"
numbers = [1,2,3,4,5,6,7,8,9,10]
p numbers
numbers.map! { |num| num+2}
p numbers

puts ""
puts "Tealeafs example"
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr