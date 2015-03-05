#Intermediate Quiz 2

p "Exercise 1"
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }
total_male_age = 0
hash.each do |k,v|
  is_male = v["gender"] == "male"
  total_male_age += is_male ? v["age"] : 0
end
p "Total male age is #{total_male_age}"

puts ""
p "Exercise 2"
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }
index = 0
hash = hash.each{ |k,v| v[:original_order] = index; index += 1 }
hash = hash.each{ |k,v| v[:length_order] = k.length }
hash.to_a.sort{ |a,b| a[1][:original_order] <=> b[1][:original_order] }.each{ |item| puts item}
puts ""
hash.to_a.sort{ |a,b| a[1][:length_order] <=> b[1][:length_order] }.each{ |item| puts item}

puts ""
p "Exercise 3"
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
hash.each do |k,v|
  puts "#{k} is #{v['age']} years old, who is a #{v['gender']}"
end

puts ""
p "Exercise 4"

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
puts ""
p "Simpler Version (Output looks the same, but code is different)"
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
a_string_param, an_array_param = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

puts ""
p "Exercise 5"
puts "Split the string, reverse, then join it"
str = "Humpty Dumpty sat on a wall."
p str
split_str = str.split(/\W/)
join_str = split_str.reverse
p join_str.join(' ') + '.'
puts "Tealeafs Solution"
ary = str.split(/\W/)
ary.reverse!
p str = ary.join(' ') + '.'

puts ""
p "Exercise 6"
"What will the result of the code be? (34)"
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

puts ""
p "Exercise 7"
p "Would the data be destroyed if the following was run"
p "mess_with_demographics(munster_hash)"
munster_hash = { 
     "Herman" => { "age" => 32, "gender" => "male" }, 
     "Lily" => { "age" => 30, "gender" => "female" }, 
     "Grandpa" => { "age" => 402, "gender" => "male" }, 
     "Eddie" => { "age" => 10, "gender" => "male" },
     "Marilyn" => { "age" => 23, "gender" => "female"}
    }
puts "Original hash values"
p munster_hash
def mess_with_demographics(demo_hash)
    demo_hash.values.each do | family_member |
      family_member["age"] += 42
      family_member["gender"] = "other"
    end
end
puts ""
mess_with_demographics(munster_hash)
p munster_hash

puts ""
p "Exercise 9"
def rps(fist1, fist2)
  if (fist1 == "rock")
    (fist2 == "paper") ? "paper" : "rock"
  elsif (fist1 == "paper")
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")

puts ""
p "Exercise 10"
def foo(param="no")
  "yes"
end

def bar(param="no")
  param == "no" ? "yes" : "no"
end

p maybe = bar(foo())