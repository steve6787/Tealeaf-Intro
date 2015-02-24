# practice_each.rb

puts "Original"
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
names.each { |name| puts name }

puts ""
puts "Add numbers by each name"
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end