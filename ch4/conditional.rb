#conditional.rb

puts "Enter a number:"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is not 3 or 4"
end