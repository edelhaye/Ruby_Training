class Car
  def initialize
    puts "creating a new car"
  end
  
  def set_make(make)
  	@make = make
  end
  
  def set_model(model)
  	@model = model
  end
  
  def description
    @make + " " + @model
  end
end

audi = Car.new
audi.set_make("Audi")
audi.set_model("A1")
puts audi.description

vw = Car.new
vw.set_make("Volkswagen")
vw.set_model("Polo")
puts vw.description

