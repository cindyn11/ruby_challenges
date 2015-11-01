#!/usr/bin/ruby -w

# define a class
class Box
   #Initialize our class variables
   @@count = 0
	def initialize(w,h)
		#assign instance variables
		@width, @height = w,h
		
		@@count +=1
	end
	
	def self.printCount
		puts "Box count is : #@@count"
	end
end

#create two objects
box1 = Box.new(120, 20)
box2 = Box.new(230, 100)

#call class method to print box count
Box.printCount()
