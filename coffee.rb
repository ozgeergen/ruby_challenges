class Beverage
    def set_type=(type)
        @type = type
    end
    def get_type
        return @type
    end
end


class Coffee < Beverage
    def brew
        return "It's the best way to kick off your mornings with a shot of #{@type}"
    end
end

class Tea < Beverage
    def prepare
        return "Would you like your #{@type} with milk or lemon?"
    end
end

my_coffee = Coffee.new
my_coffee.set_type = "Turkish Coffee"
coffee_type = my_coffee.get_type

my_tea = Tea.new
my_tea.set_type = "English Brekfast Tea"
tea_type = my_tea.get_type


puts "If you would like to have #{coffee_type} I say #{my_coffee.brew}, if you pick #{tea_type} I say #{my_tea.prepare}."

puts my_coffee.inspect
puts my_tea.inspect

    






