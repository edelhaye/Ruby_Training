# Example

def calc_mean(var1,var2)
  mean = (var1 + var2)/2
  puts "The mean is equal to #{mean}."
end

calc_mean(1,3)

# Show in editor: Everything in Ruby is an object.
true.class
name.class
number.class

# Exercise 1: methods

def describe_customer(var1,var2,var3)
  puts " The name of the customer is #{var1}"
  puts " The customer is born in #{var2}"
  puts " The customer lives in #{var3}."
end

customer("Luc", 1980, "Diegem")


# Exercise 2: Define a class animal. Add methods.
class Animal

  def initialize
    puts "Creating a new animal"
  end
  
  def set_name(new_name)
    @name = new_name
  end
  
  def name
    @name
  end
  
end


# Exercise 3: Create a two new animals, a cat and a dog. Set his name to Peekaboo & Beethoven. Print them.
cat = Animal.new
cat.set_name("Peekaboo")
puts cat.name

dog = Animal.new
dog.set_name("Beethoven")
puts dog.name


# Exercise 4

class Cars

  def initialize
  puts "creating a new car"
  end
  
  def set_type(new_type)
  	@type= new_type
  end
  
  def type
    @type
  end

audi = Car.new
car.set_type("A1")
puts car.type

volkswagen = Car.new
car.set_type("polo")
puts car.type
	

# Exercise 5: Blocks
# Part one:
7.times do
  puts "This line need to be printed 7 times!"
end


# Part two
x=10
5.times do |x|
  puts "x inside the block: #{x}"
end

print "x outside the block: #{x}"


# Exercise 6: 
cities_array = ["Tokyo", "Berlin", "New York", "London"]

print cities_array 
puts '  Original array'

cities_array.push("Brussels")
print cities_array 
puts ' Brussels added to the original array'

cities_array.delete_at(0) # Start at index 0 for first element!!!
# second option: cities_array.delete("Tokyo")
print cities_array 
puts 'Tokyo removed from the original array'

cities_array.insert(1, "Paris")
print cities_array 
puts '  Added Paris in between Berlin and New York'


# Exercise 7:
File.open("D:/Users/EDELHAYE/Documents/array_notes.txt", 'r').each_line do |line|
  line = line.strip.split ','
  print line
end

# Example: Hashes
dictionary = { "one" => "eins", "two" => "zwei", "three" => "drei" }
puts dictionary["one"]


# Exercise 7: Hashes
puts "Two in German is " + dictionary['two']

# A phrase translator
dictionary['please'] = 'bitte'
dictionary['beer'] = 'Bier'

english_words = "two beer please".split
translation = []

english_words.each do |word|
    translation.push dictionary[word]
end
puts translation.join ' '


# Exercise 8: Arrays and for loops

# Exercise 9: Arrays and for loops

# the array
numbers = [20, 30, 25, 35, -16, 60, -10]
# calculate sum of all array elements
sum = 0
for number in numbers
  sum = sum + number
end
avg = sum / numbers.length
print avg


# Example: libraries
