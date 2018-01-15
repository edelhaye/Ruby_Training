dictionary = { "one" => "eins", "two" => "zwei", "three" => "drei" }
puts dictionary["one"]

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

