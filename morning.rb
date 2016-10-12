class Coffee

attr_accessor :type, :beans

def brew
return "I have made you #{type} with beans from #{beans}. Good morning!"
end

end

my_coffee = Coffee.new
my_coffee.type = "Turkish Coffee"
my_coffee.beans = "Guatemala"

puts my_coffee.brew