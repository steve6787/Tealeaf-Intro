# countdown.rb

puts "Enter a positive number:"
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"