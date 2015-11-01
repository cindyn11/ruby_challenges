class Pet
	def set_pname=(pet_name)
		@pname = name
	end
	def get_pname
		return @name
	end
	
	def set_owner=(pet_owner)
		@owner = owner
	end
	def get_owner
		return @owner
	end
	
	def set_noise=(animal_noise)
		@noise = noise
	end
end


class Dog < Pet
	def set_dog=(dog_breed)
		@breed = dog_breed
	end
	
	def get_dog
		return @breed
	end
	
	def bark
			if @name == "Fido"
			return "Bow, Wow!"
			else 
			return "Woof, Woof!"
	end
end

my_dog = Dog.new
my_dog.set_pname = "George"
my_dog.set_breed= "Husky"
my_dog.set_owner = "ME!"
my_dog.set_noise = "Bark!"
puts "#{dogname} says #{my_dog.bark}"

#your_dog = Dog.new
#your_dog.set_name = "Fido"
#dogname = your_dog.get_name
#puts "#{dogname} says #{your_dog.bark}"

end