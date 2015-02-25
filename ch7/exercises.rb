p "Exercise 1"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family = family.select { |k,v| k == :sisters || k == :brothers}

arr = immediate_family.values.flatten
p arr

puts ""
p "Exercise 2 (merge and merge!)"
new_person = {name: 'Steve'}
person = { height: '6 ft', weight: '160 lbs' }
person.merge(new_person)
p person
puts ""
person = { height: '6 ft', weight: '160 lbs' }
person.merge!(new_person)
p person

puts ""
p "Exercise 3 - Loops through a hash and prints all keys."
p "Then create a program that will print all values."
p "Finally a program that prints both keys and values."
person = {name: 'Steve', height: '6 ft', weight: '195', hair: 'Brown'}

p "Person Hash Keys only"
person.each do |key, value|
  p "Persons #{key}"
end

p "Person Hash Values only"
person.each do |key, value|
  p "Persons #{value}"
end

p "Person Hash Keys and Values"
person.each do |key, value|
  p "Persons #{key} is #{value}"
end

puts ""
p "Exercise 4 - Access the name of the person from following code"
p "person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]

puts ""
p "Exercise 5 What method could you use to find out if a Hash"
p "Contains a specific value in it?"
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
p "Does the hash contain key Steve?"
p name_and_age.has_key?("Steve")
p "Does the hash contain key John?"
p name_and_age.has_key?("John")
#p "TeaLeafs Example"
#def has_value?

#if opposites.has_value?("negative")
#  puts "Got it!"
#else
#  puts "Nope!"
#end
puts ""
p "Exercise 6 Write a program that prints out groups of words thata are anagrams"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end