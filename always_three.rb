
def always_three(number)
    number1 = (((number + 5)*2)-4)/2 - number
    puts "Always number #{number1}"
end
puts "Give me a number"
number = gets.to_i
always_three(number)
