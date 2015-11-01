# Ask the user to "Give me a number"
puts "Give me a number."

# Grab that number and transform it to an integer.
# Set the resulting number to a variable
number1 = gets.to_i

# Add 5 to number1
number2 = number1 + 5

# Multiply the result by 2
number2 = number2 * 2

# Subtract four
number2 = number2 - 4
 
# Divide by two
number2 = number2 / 2

#Reveal final number 
number_final = number2 - number1
puts "Final number is: #{number_final}"

