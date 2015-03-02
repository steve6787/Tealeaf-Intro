puts ""
#p "Exercise 10"
#p "Can hash values be arrays? Can you have an array of hashes? (give examples)"
## hash values as arrays
#hash = {names: ['bob', 'joe', 'susan']}

## array of hashes
#arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

puts ""
p "Exercise 12"
p "Write a program that moves the information from the array into the empty hash that applies to the correct person."
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts ["Joe Smith"] [:email] = contact_data [0] [0]
contacts ["Joe Smith"] [:address] = contact_data [0] [1]
contacts ["Joe Smith"] [:phone] = contact_data [0] [2]
contacts ["Sally Johnson"] [:email] = contact_data [1] [0]
contacts ["Sally Johnson"] [:address] = contact_data [1] [1]
contacts ["Sally Johnson"] [:phone] = contact_data [1] [2]
p contacts

puts ""
p "Exercise 13"
p "Using the hash you created from the previous exercise,"
p "demonstrate how you would access Joe's email and Sally's phone number?"
contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
            "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}
p "Joe Smith's email is #{contacts["Joe Smith"] [:email]}"
p "Sally Johnson's phone is #{contacts["Sally Johnson"] [:phone]}"

puts ""
p "Exercise 14"
#In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12,
#and populate the associated data from the contact_data array. Hint: you will probably need to iterate over
#([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
#contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#contacts = {"Joe Smith" => {}}
#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
               ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }
fields = [:name, :address, :phone]
contacts.each_with_index do |(k,v), idx|
  fields.each do |f|
    v[f] = contact_data[idx].shift
  end
end
p contacts

puts ""
p "Exercise 15"
p "Use Ruby's Array method delete_if and String method start_with?"
p "to delete all of the words that begin with an s in the following array."
p "Then recreate the arr and get rid of all of the words that start with s or w"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
arr.delete_if { |array|
  array.start_with?("s","w")
  } 
p arr

puts ""
p "Exercise 16"
p "Take the following array:"
puts "a = ['white snow', 'winter wonderland', 'melting ice',"
puts "     'slippery sidewalk', 'salted roads', 'white trees']"
p "and turn it into a new array that consists of strings containing one word."
p "(ex. [white snow, etc...] → [white, snow, etc...]. Look into using Array's map and flatten methods, as well as String's split method."
puts ""
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map! {|pairs| pairs.split}
a.flatten!
p a