# Your Numerology app will be based on the birth path number! The birth path number is determined by doing a little bit of math magic with your date of birth. Your birthdate is reduced down to a single digit, 1-9. That number corresponds to a specific message about your path in life and place in the world. It’s real, we swear!

# To begin, create a new file called numerology.rb and store it in your Ruby folder.

# Open that baby up in a text editor and get ready!

# This is a BIG challenge that covers many of the Ruby fundamentals you’ve learned over the past 1 1/2 weeks. You are going to:

    # use methods to convert strings to numbers and numbers to strings
    # access parts of a string with array indexing
    # use an if statement to make a decision
    # use a case statement to make more decisions!

# The Pseudocode

# First let’s talk pseudocode for how to get the birth path number.

# In order to get your birth path number, you need to add up the individual digits of your birth date, and then keep adding them until you end up with a single digit.

# For example, if your birthdate is May 20, 1965 (05201965), you add those numbers together like so:

# 0 + 5 + 2 + 0 + 1 + 9 + 6 + 5 = 28

# Then add the numbers that make up the result together:

# 2 + 8 = 10

# Since 10 is a two-digit number and we want a single-digit number, add the numbers that make up that result together again:

# 1 + 0 = 1

# Your birth path number is 1!
# The Real Code

# Here are the steps to write your script:

    # First, ask the user for their birthdate. It must be in the format MMDDYYYY
    # Use the gets method to get their birthdate & assign it to a variable
    # Next you need to add all the numbers of their birthdate together & assign the result to a new variable. You can use array syntax to access each part of their birthdate like so:
    # birthdate[0]
    # birthdate[1]
    # # and so on!
    # 1
    # 2
    # 3
    	
    # birthdate[0]
    # birthdate[1]
    # # and so on!

    # The tricky thing is that each part needs to be converted to an integer before you can add the numbers together, because the birthdate is really a string when you get it.

    # Do you remember which Ruby method to use to convert a string to an integer?

    # To recap: Get each number from the birthdate individually, using array syntax, and convert it to a number. Then add those eight numbers together.

    # Make sure you set the result of all those additions to a new variable called number.

    # Now you need to start reducing that number down to a single digit. First you’re going to convert the number back to a string so that you can use array syntax again – array syntax does not work on integers!

    # Convert the number back to a string, then follow step 3 again; get each number individually, using array syntax, and convert it to a number. Then add those two numbers together.

    # Now it’s time for an if statement! Your current number could be 1-9, or it could be greater than 9.

    # Your if statement needs to check if your number is greater than 9, and if it is, reduce again by following step 4. Otherwise, you are all set for the next step.

    # Now you have your single-digit birth path number! All that’s left is to display the number to the user and also the number’s meaning. For this you’ll use a case statement.

    # Your case statement should check the birth path number and then display the correct message. To make your life a LITTLE easier, you can get the text for each number below.

    # Your message should look something like this:

    # Your numerology number is 1.

    # One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.





def bp_number
	case bp_number
	when 1
		puts "Your birth path number is #{bp_number}.\n One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

	when 2
		puts "Your birth path number is #{bp_number}.\n This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		
	when 3
		puts "Your birth path number is #{bp_number}.\n Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		
	when 4
		puts "Your birth path number is #{bp_number}.\n This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		
	when 5
		puts "Your birth path number is #{bp_number}.\n This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		
	when 6
		puts "Your birth path number is #{bp_number}.\n This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		
	when 7
		puts "Your birth path number is #{bp_number}.\n This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		
	when 8
		puts "Your birth path number is #{bp_number}.\n This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

	when 9
		puts "Your birth path number is #{bp_number}.\n This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."	
		
	else 
		puts "Your birth path number is not within the defined range 1-9"
	end
end
# In order to get your birth path number, you need to add up the individual digits of your birth date, and then keep adding them until you end up with a single digit.
# Dec 6, 1971
def bdate
	puts "Enter your birthdate in MMDDYYYY format:"
	bdate = gets
end
#Then add the numbers that make up the result together:

def bp_number(bdate)
	bp_number = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i + bdate[6].to_i + bdate[7].to_i

	bp_number = bp_number.to_s
	bp_number = bp_number[0].to_i + bp_number[1].to_i
	puts "Your birth path number is #{bp_number}"
end

bp_number(bdate)