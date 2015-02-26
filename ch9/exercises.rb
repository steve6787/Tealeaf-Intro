puts ""
p "Exercise 1"
p "Program that checks for the sequence of char 'lab'"
p "If it does exist, print out the word"
puts ""
def has_lab?(string)
  if string =~ /lab/
    puts "#{string} has the letters 'lab'"
  elsif string =~ /Lab/      
    puts "#{string} has the letters 'Lab'"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

puts ""
p "Exercise 4"
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
