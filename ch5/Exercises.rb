#Exercises Chapter 5
puts "Exercise 1"
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

puts ""
puts "Exercise 2"
n = 0
begin
n += 1
puts "Do you want to continue?"
puts "Type STOP to end"
answer = gets.chomp
puts "You've done this #{n} times"
end while answer != 'STOP'

puts ""
puts "Exercise 2 example from Tealeaf"
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end

puts ""
puts "Exercise 3 - each_with_index"
x = ["Kratos", "Crane", "Ajay", "Joel", "Ellie"]
x.each_with_index do |name, index|
  puts "#{index + 1}. #{name}"
end

puts ""
puts "Exercise 4 - Count down to 0 using recursion"
def countdown(num)
  if num <= 0
    puts num
  else
    puts num
    countdown(num - 1)
  end
end

countdown(10)
countdown(50)
countdown(-10)
