=begin
You may remember that in the very very beginning of this course (can you even remember that far back??) I told you that one of the things that makes Ruby SOOO special is that Ruby is object orientated.

In practice, this means two things:
1.Ruby likes to treat everything like an object
2.You can create your OWN objects!

What creating your own objects means is that you can do something called creating a class, where you define the attributes and capabilities that are unique to THAT type of object.
I know this sounds really abstract, but it’s actually common sense, and it’s how we are USED to thinking about the world.
For example, you might want to create a class called Ferrets.Ferrets have names, they squeal, and they have an owner. Right? Those are the characteristics of a Ferrets (among others).

So you could write:
class Ferret

	def set_name=(ferret_name)
		@name = ferret_name
	end

	def get_name
		return @name
	end

def set_owner=(owner_name)
		@owner_name = owner_name
	end

def get_owner
		return @owner_name
	end

	def squeal
		return “squeeeeee”
	end

end

my_ferret = Ferret.new
my_ferret.set_name= “Fredo”
ferretname = my_ferret.get_name
puts “#{ferretname} says #{my_ferret.squeal}”

 class Ferret
 
	def set_name=(ferret_name)
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
def get_owner
		return @owner_name
	end
 
	def squeal
		return “squeeeeee”
	end
 
end
 
my_ferret = Ferret.new
my_ferret.set_name= “Fredo”
ferretname = my_ferret.get_name
puts “#{ferretname} says #{my_ferret.squeal}”

 
Alright, so that was a lot of code, let’s talk about it! I began by creating a class which I titled Ferret. You will notice that I capitalized the name of my class. When you define an object class you always capitalize the title.
Once I have created the Ferret class, I want to make sure that all ferrets have names. for that reason I have created a method called set_name, it accepts 1 argument which I will use to provide it with the ferret’s name. But WAIT, what was the meaning of the variable with this crazy @ sign?? Do you remember that we mentioned these wayyy back in our lesson introducing variables?
This is what’s called an instance variable, because it belongs to THIS instance of this object.
In other words, every ferret that we create will have a @name instance variable that stores it’s name. So my ferret will have a @name, your ferret will have an @name and Steven’s ferret will also have an @name.
Once I set the @name, I will also want to be able to ask what a ferret’s name is, so I created the get_name method, which returns (aka responds) to me the @name of a ferret.
Great.
I then do the same thing for the owner of the ferret: I set the owner and then I create a way to get the name of the owner.
Lastly, I create a method called bark which only exists for the ferret class. Then I close the class with an end.
Now that I have defined for my program what a ferret is, I need to create my first ferret.
The first thing I do is write:
   
my_ferret = Ferret.new
 
This creates a new instance of the ferret class and saves the new ferret object to a variable called my_ferret.
I didn’t create the new method because that is a method that comes out of the box with Ruby and is shared by all classes. It instantiates a new instance of the ferret class, meaning, it creates a new ferret!
The I want to give my_ferret a name, so I call the set_name method on it like so:

my_ferret.set_name= “Fredo”
 
So isn’t it interesting that when I created my_ferret, the variable my_ferret was on the left, and the method was on the right?
But now, the method is on the left?
That’s because the first one was an example of a getter, while the second line is an example of a setter.
A getter goes and retrieves some information, or gets something.
In this case, it got a new ferret.
Setters, set values, meaning they assign a value to an object. IN this instance, they assign the name “Fredo” to my_ferret.
Now, I want to write a sentence about my ferret, so I need to get the name of my_ferret and save it to it’s own my_ferret_name variable, using the get_name method:

my_ferret_name = my_ferret.get_name
(Oooh it’s a getter!)

Finally, I am going to use my fancy string interpolation skills to write a sentence about my_ferret:

puts “#{my_ferret_name} says #{my_ferret.squeal}”

Now, I can run this program and…
Voila!
Fredo says squeeeeee!

 
Now it’s your turn to create your first object class!
=end

class Dog
	def set_name=(dog_name)
		@name = dog_name
	end
	def get_name
		return @name
	end
	
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
	def get_owner
		return @owner_name
	end
	
	def bark
			if @name == "Fido"
			return "Bow, Wow!"
			else 
			return "Woof, Woof!"
	end
end
my_dog = Dog.new
my_dog.set_name = "George"
dogname = my_dog.get_name
puts "#{dogname} says #{my_dog.bark}"

your_dog = Dog.new
your_dog.set_name = "Fido"
dogname = your_dog.get_name
puts "#{dogname} says #{your_dog.bark}"

end