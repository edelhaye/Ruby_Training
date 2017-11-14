print "What is the current temperature? "
temperature = gets.to_i

if temperature >= 30
    print "It's hot today!"
elsif temperature <= 10
    print "It's cold today!"
else
    print "It's nice today!"
end
