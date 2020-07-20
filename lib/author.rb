require 'pry'

class Author
  attr_accessor :name

  @@all = [] 

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def posts     # find all posts by an author
    Post.all.select {|title| title.author == self}
  end
  
  def add_post(post)  # post is an instance of a post class and connects to its author
    post.author = self 
  end 

 
  def self.all
    @@all
  end



  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

def self.post_count
  Post.all.count
end


end