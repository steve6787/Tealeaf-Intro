# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name}.  I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Steve")
greeting("Steve", {age: 35, city: "Circleville, OH"})
greeting("Steve", age: 35, city: "Circleville, OH")
