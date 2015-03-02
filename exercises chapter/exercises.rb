puts ""
p "Exercise 1"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |a| puts a }

puts ""
p "Exercise 2"
p "Show numbers greater than 5 in the array"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |num| 
  if num > 5
  p num
  end }

puts ""
p "Exercise 3"
p "Use select method to extract all odd numbers into a new array"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = arr.select { |num| num.odd? }
p new_arr

puts ""
p "Exercise 4"
p "Prepend 0 and Append 11 to array"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.unshift(0)
arr.push(11)
p arr

puts ""
p "Exercise 5"
p "Get rid of 11 and append a 3"
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr.pop
arr.push(3)
p arr

puts ""
p "Exercise 6"
p "Get rid of duplicates without specifically removing any one value"
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
arr.uniq!
p arr

puts ""
p "Exercise 8"
p "Create a Hash using both Ruby syntax styles"
old_hash = {:team => 'Lakers'}
p old_hash
new_hash = {team: 'Lakers'}
p new_hash

puts ""
p "Exercise 9"
p "With the following hash - h = {a:1, b:2, c:3, d:4}"
p "1. Get the value of key ':b'"
p "2. Add to this hash the key:value pair '{e:5}'"
p "3. Remove all key:value pairs whose value is less than 3.5"
h = {a:1, b:2, c:3, d:4}
p h[:b]
h[:e] = 5
p h
h.delete_if { |k, v| v < 3.5}
p h
