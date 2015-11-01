class Blog
	@@all_bposts = []
	@@num_bposts = 0


  def bp.all
    @@all_blog_posts
  end
 
  def bp.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
 
  def bp.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end
 
 
class BlogPost < Blog
 
  def bp.create
    post = new
    puts "TITLE:"
    post.title = gets.chomp
    puts "CONTENT:"
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
    BlogPost.add(bp)
  end
 
end
 
BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish