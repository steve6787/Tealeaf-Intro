#Quiz 2

p "Exercise 1"
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
if 
  hash.has_key?("Spot")
  puts "Spot is in this hash"
else
  puts "Spot is not in this hash"
end

puts ""
p "Exercise 2"
hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
total_age = hash.values.inject(:+)
p total_age


puts ""
p "Exercise 3"
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash.keep_if { |k,v| v < 80}
p hash

puts ""
p "Exercise 4"
str = "The Munsters are creepy in a good way."
str_down_one = str
str_mix = str
str_down = str
str_up = str
p str_down_one.capitalize!
str_mix.upcase!
str_mix.gsub!(/THE/, 'tHE')
str_mix.gsub!(/MUNSTERS/, 'mUNSTERS')
p str_mix
p str_down.downcase!
p str_up.upcase!

puts ""
p "Exercise 5"
hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
rest = { "Marilyn" => 22, "Spot" => 237 }
hash.merge!(rest)
p hash

puts ""
p "Exercise 6"
hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
lowest_val = hash.select { |k,v| v == hash.values.min }
p lowest_val
low2 = hash.values.min
p low2

puts ""
p "Exercise 7"
str = "Few things in life are as important as house training your pet dinosaur."
if 
  hash.has_key?("Dino")
  p "String contains Dino"
  else
  p "String does not contain Dino"  
end
# Another Way
#dino = str.match("Dino")

puts ""
p "Exercise 8"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
a = arr.index { |name| name[0,2] == "Be"}
p a

puts "Exercise 9"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! do |name|
  name [0, 3]
end
p arr

puts ""
p "Exercise 10"
arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! { |name| name [0, 3] }
p arr
