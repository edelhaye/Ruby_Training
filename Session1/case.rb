puts "Enter language: "
greeting = gets.chomp

case greeting
    when "French", "french"
        puts "Bonsoir"
    
    when "Dutch", "dutch"
        puts "Goedenavond"
        
    else
        puts "Good evening. English is the default."
end
