class Pet
    def set_type=(type)
        @type = type
    end
    
    def get_type
        return @type
    end
    
    def set_petname=(petname)
        @petname = petname
    end
    
    def get_petname
        return @petname
    end
end
 
class Dog < Pet
    def set_birth_date=(birth_date)
        @birth_date = birth_date
    end
    
    def get_birth_date
        return @birth_date
    end
    
    def set_bark=(bark)
        @bark = bark
    end
    
    def get_bark
        return @bark
    end
    
end
 
class Cat < Pet
    def set_age=(age)
        @age = age
    end
    
    def get_age
        return @age
    end
end
 
 
my_dog = Dog.new
my_dog.set_petname = 'Charlie'
my_dog.set_birth_date = '12/12/2004'
my_dog.set_type = 'Chihuahua'
my_dog.set_bark = 'Woof, woof, bow, wow'
my_cat = Cat.new
my_cat.set_age = '12'
my_cat.set_petname = 'Morris'
my_cat.set_type = 'Calico'
puts my_dog.get_bark
puts my_dog.get_petname
puts my_dog.get_birth_date
puts my_dog.get_type
puts my_cat.get_age
puts my_cat.get_petname
puts my_cat.get_type
puts "#{my_dog.get_petname} and #{my_cat.get_petname} are crazy rascals!"



