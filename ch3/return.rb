def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

p "Using return"
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value

p "Using return example 2"
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value