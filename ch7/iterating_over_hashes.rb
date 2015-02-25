# iterating_over_hahes.rb

person = {name: 'Steve', height: '6 ft', weight: '195', hair: 'Brown'}

person.each do |key, value|
  puts "Steve's #{key} is #{value}"
end