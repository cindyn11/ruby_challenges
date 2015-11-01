# Ask the user to "Give me a number"
puts "Give me a number."

# Grab that number and transform it to an integer.
# Set the resulting number to a variable
number1 = gets.to_i

number2 = number1

# Add 5 
number2+=5

# Multiply the result by 2
number2*=2

# Subtract four
number2-=4
 
# Divide by two
number2/=2

# Subract number1 from number2
number2-=number1

#Reveal final number 
puts "Final number is: #{number2}"

