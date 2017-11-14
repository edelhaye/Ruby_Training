# Import the Net::HTTP library. It comes with the Ruby installation as a standard library.
require 'net/http'

# Import the JSON library
require 'json'


# Use the Net::HTTP library to retrieve the Bitcoin price info
uri = URI('https://www.bitstamp.net/api/v2/ticker/btceur/')
bitcoin_price_data = Net::HTTP.get(uri)
puts bitcoin_price_data


# Convert the string data into a Ruby hash
json = JSON.parse(bitcoin_price_data)

# Extract and convert the data we want
high = json['high'].to_f
low = json['low'].to_f

# Use the data
puts "Today's Bitcoin spread was #{high - low} EUR"

