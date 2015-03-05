#Intermediate Quiz 1

p "Exercise 1"
10.times { |index| puts "The Flinstones Rock!".rjust(21 + index) }

puts ""
p "Exercise 2"
str = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
letters.each do |letter|
  count = str.scan(letter.to_s).count
  result[letter] = count if count > 0
end
p result

def fib(first_num, second_num)
limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
puts "result is #{result}"

puts ""
p "Exercise 9"
characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]
    class String
  def short_version( length )
    result = self.dup
      starting_length = self.length
      if starting_length > length
        result = result[ 0, length - 1 ]
        result += "…"
      end
      return result
    end
end

characters.each{ |character| p character.values.map{|value| value.short_version(32) }.join("    ") }

puts ""
p "Exercise 10"
hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}
p hash
puts ""
age_of_majority = 18
dotage = 65
hash.each do | key, value |
  value[:demographics] = "kid" if value["age"] < age_of_majority
  value[:demographics] = "adult" if (age_of_majority..dotage).include? value["age"]
  value[:demographics] = "senior" if value["age"] >= dotage
end
p hash
