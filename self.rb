#	self.title in the above example will be invoked by the (current) object, Book. While title will be invoked by the object, Book.new. 
#	Therefore, to determine the value of self, you need to think around where the self resides.

class Book
  def self.title
    true
  end
 
  def title
    true
  end
end

#	instead of defining @name in self method. As you should already know, you may simply replace it with
#	@name = nil
#	And you’d get the same output.

class SelfStudy
  attr_accessor :name
 
  def self
    @name
  end
 
  def self.name
    @name
  end
 
  def self.name=(name)
    @name = name
  end
 
  def self.default_name
    self.name = "ClassName"
  end
 
  def default_name
    self.name = "InstanceName"
  end
end
 
puts SelfStudy.name
#=> nil
puts SelfStudy.default_name
#=> ClassName
 
me = SelfStudy.new
puts me.name
#=> nil
puts me.default_name
#=> InstanceName
 
puts SelfStudy.name 
#=> ClassName
puts SelfStudy.default_name
#=> ClassName