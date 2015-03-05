#Advanced Quiz 1

p "Exercise 1"
if false
  n = “hello world”
end

n

puts ""
p "Exercise 2"
my_hash = {a: 'hi'}
n = my_hash[:a]
n << ' there'

puts n  #  => "hi there"
puts my_hash

puts ""
p "Exercise 3 A"
def mess_with_vars(one, two, three)
    one = two
    two = three
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

puts ""
p "Exercise 3 B"
def mess_with_vars(one, two, three)
    one = "two"
    two = "three"
    three = "one"
  end

    one = "one"
    two = "two"
    three = "three"

    mess_with_vars(one, two, three)

    puts "one is: #{one}"
    puts "two is: #{two}"
    puts "three is: #{three}"

puts ""
p "Exercise 3 C"
def mess_with_vars(one, two, three)
      one.gsub!("one","two")
      two.gsub!("two","three")
      three.gsub!("three","one")
    end

    one = "one"
    two = "two"
    three = "three"

    mess_with_vars(one, two, three)

    puts "one is: #{one}"
    puts "two is: #{two}"
    puts "three is: #{three}"

puts ""
p "Exercise 4 A"
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| input *= 10 }
    ary.each &da_lamb
    puts ary.inspect

puts ""
p "Exercise 4 B"
 da_string = "10"
    puts da_string.object_id
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| da_string.gsub!(/\d0/,(input * 10).to_s) }
    ary.each &da_lamb
    puts da_string

puts ""
p "Exercise 4 C"
    da_string = ""
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| da_string << (input * 10).to_s }
    ary.each &da_lamb
    puts da_string

puts ""
p "Exercise 4 D"
    da_string = ""
    ary = [1, 2, 3, 4]
    da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
    ary.each &da_lamb
    puts da_string

puts ""
p "Exercise 4 E"

    da_string = "original"
    ary = [1, 2, 3, 4]
    def call_me(da_string, ary)
      da_string = "not so original"
      da_lamb = lambda { |input| da_string = da_string + (input * 10).to_s }
      ary.each &da_lamb
    end
    call_me(da_string, ary)
    puts da_string

puts ""
p "Exercise 5"
p "Method that returns 1 UID when called with no parameters"
def generate_UUID
    characters = [] 
    (0..9).each{ | digit | characters << digit.to_s}
    ('a'..'f').each{ | digit | characters << digit}

    uuid = ""
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index|
      section.times{ uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end

    return uuid
end

puts ""
p "Exercise 6"
str = "Herman Munster is a BIG BIG man." 
p str
p "After method, should become: namreH retsnuM si a GIB GIB nam."

class String
  def map_words!
    punctuation = self.match(/\p{Punct}$/)[0] || ''
    ary = self.split(/\W/)
    ary.map! { |word| yield word }
    self.replace( ary.join(' ') + punctuation )
    return self
  end
end

str.map_words!{|x| x.reverse}
p str

puts ""
p "Exercise 7"
#Fix the code
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break if !is_a_number?(word)
  end
  return true
end
#Revised Code
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end
  return true
end