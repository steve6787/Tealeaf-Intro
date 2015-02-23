#case_statement.rb

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is not 5 or 6"
  end

  puts answer

puts ""
#"Dont have to give case an argument"

a = 5

answer = case
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is not 5 or 6"
  end

  puts answer