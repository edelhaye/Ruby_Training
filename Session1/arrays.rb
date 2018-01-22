cities = ["Tokyo", "Berlin", "New York", "London"]

print cities 
puts 'Original array'

cities.push("Brussels")
print cities 
puts 'Brussels added to the original array'

cities.delete_at(0) # Start at index 0 for first element!
# second option: cities.delete("Tokyo")
print cities 
puts 'Tokyo removed from the original array'

cities.insert(1, "Paris")
print cities 
puts 'Added Paris in between Berlin and New York'

