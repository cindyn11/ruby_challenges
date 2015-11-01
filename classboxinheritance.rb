=begin
One of the most important concepts in object-oriented programming is that of inheritance. 
Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application.
Inheritance also provides an opportunity to reuse the code functionality and fast implementation time but unfortunately Ruby does not support 
multiple levels of inheritances but Ruby supports mixins. A mixin is like a specialized implementation of multiple inheritance in which only the 
interface portion is inherited.
When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should
inherit the members of an existing class. This existing class is called the base class or superclass, and the new class is referred to as the derived 
class or sub-class.
Ruby also supports the concept of subclassing, i.e., inheritance and following example explains the concept. The syntax for extending a 
class is simple. Just add a < character and the name of the superclass to your class statement. For example, following define a class BigBox as a subclass of Box:
=end
# define a class
class Box
	#constructor method
	def initialize(w,h)
		@width, @height = w, h 
	end
	
	# instance method by default it is public
	def getArea
		getWidth() * getHeight
	end
	
	#define a subclass
class BigBox < Box

	# add a new instance method
	def printArea
		@area = @width * @height
		puts "Big box area is : #@area"
	end
end

# Create an object
box = BigBox.new(10,20)

# print the area
box.printArea()
end