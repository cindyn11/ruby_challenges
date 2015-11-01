def always_three (number1)
	(((number1 +5)*2-4)/2 - number1)
end
	
	# Ask the user to "Give me a number"
	puts "Give me a number."
	# Grab that number and transform it to an integer.
	number2 = gets.to_i
	
puts 'Always ' + always_three(number2).to_s 	
	