puts ""
puts "Exercise 2"
puts "Enter a statement, if more than 10 characters"
puts "The output will be all CAPS"
puts ""
def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Steve Sharp Jr")
puts caps("Hi Sls")

puts ""
puts "Write a program that takes a number between 0-100"
puts "Then tell if number entered is between"
puts "0-50, 50-100, or above 100 (uses if/elsif)"
puts ""
puts "Please enter a number 0 to 100"
number = gets.chomp.to_i

if number < 0
  puts "Number entered is negative!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 50 and 100"
else
  puts "#{number} is over 100"
end
