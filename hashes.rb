dictionary = { "one" => "eins", "two" => "zwei", "three" => "drei" }
puts dictionary["one"]

puts "Two in German is " + dictionary['two']

# A phrase translator
dictionary['please'] = 'bitte'
dictionary['beer'] = 'Bier'

# Split sentence into an array of words. Splits on whitespace.
english_words = "two beer please".split

# Array for the translated words
translation = []

english_words.each do |word|
    # Translate each word and add it to the array of translated words
    translation.push dictionary[word]
end

# Join the translated words together with whitespace in between
puts translation.join ' '

