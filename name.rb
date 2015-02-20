puts "Please enter your name"
name = gets.chomp
puts "Hello " + name
puts "Here is your name 10 times, without using puts command"
10.times do
  puts name
end
puts "Ask for First and Last Name, then output Full Name"
puts "What is your First Name?"
fname = gets.chomp
puts "What is your Last Name?"
lname = gets.chomp
puts "Your Full Name is:"
puts fname + " " + lname