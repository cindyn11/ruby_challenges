#parent class Blog	- keeps track of how many blog posts created, and what to do with them.
# class Blog
   # @@blogs_of_customers=[]
   # @@count_of_blogposts = 0
   
   # def initialize(title, content, publish_date)
      # @bp_title=title
      # @bp_content=content
      # @bp_date=publish_date
   # end
# end

   # def display_details()
      # puts "Title #@bp_title"
      # puts "Post #@bp_content"
      # puts "Posted at: #@bp_date"
    # end
    # def total_no_of_posts()
       # @@no_of_posts += 1
       # puts "Total number of blogposts: #@@no_of_posts"
    # end
class Blogger
  @@all_blog_posts = []
  @@num_blog_posts = 0
 
  def blogger.all
    @@all_blog_posts
  end
 
  def blogger.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  def blogger.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end

# class Blog
		# def set_title= (bp_title)
		# @title = bp_title
	# end
 # #Title
	# def get_title
		# return @title
	# end
 
	# def set_content=(bp_content)
		# @content = bp_content
	# end
 # #Content
	# def get_content
		# return @content
	# end


# #Publish Date
	# def determine_current_date
		# current_time = Time.new
		# current_date = current_time.date	
	# end
	# def get_content
	# return @content
	# end
# #Author
	# def author_name
		# print "What is your name? "
		# # author_name = gets.chomp
	# end	


class BlogPost < Blogger
 
  def bpost.create
    post = new
    puts "Title of BlogPost:"
    post.title = gets.chomp
    puts "Content for Blogpost:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end
 
  def title
    @title
  end
 
  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end
 
  def created_at
    @created_at
  end
 
  def created_at=(created_at)
    @created_at = created_at
  end
 
  def content
    @content
  end
 
  def content=(content)
    @content = content
  end
 
  def save
    BlogPost.add(self)
  end
 
end
 
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish

	