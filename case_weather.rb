# Create a variable that will hold the weather. 
weather = 'cloudy'

# Just to make things easier, the weather should be limited to a single word: sunny, cloudy, foggy, rainy, etc.

# Start your case statement with the keyword case followed by your variable.
case weather

# Next, use the when keyword to check a string that the weather variable could be equal to, followed by a puts line that gives advice about what to wear.
# Create as many when / puts lines as you need to check for all kinds of weather.
when'sunny'
	puts "Wear shorts today."
when'cloudy'
	puts "Put on a jacket!"
when 'foggy'
	puts "Wear your cap with the headlight."
when 'rainy'
	puts "Drag out your umbrella!"
when 'snowy'
	puts "It's best to stay in and drink hot chocolate.  Call in sick to work and wear your pajamas."
else 
	puts "I don't know what you should wear.  Call a doctor!"

# Don’t forget to close your case statement with the end keyword.
end