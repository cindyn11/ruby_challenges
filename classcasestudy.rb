#!/usr/bin/ruby
#Create a class called Customer, and declare two methods: dispay_details- this will display the details of the customer; total_no_of_customers- will diplay
#the total number of customers created in the system.

class Customer
	@@no_of_customers=0
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"
	end
	def total_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers: #@@no_of_customers"
	end
end



	#create 2 customers - two objects are created and then passed parameters with the new method.  the initialize method is invoked, and the necessary properties of the 
	#object are initialized.

cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Paul", "New Empire road, Chicago")

	#Once the objecs are created, you need to call the methods class by using the two objects.  If you want to call a method or any data member, write the following:

cust1.display_details()
cust1.total_no_of_customers()



	#the object name should always be followed by a dot, which is in turn followed by the method name or any data member.  We have seen how to call the two methods by 
	#using the cust1 object.  Using the cust2 object, you can call both methods shown below
	
cust2.display_details()
cust2.total_no_of_customers()