class Post
  
  attr_accessor :name 
  
    @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_post
  
  end
  
end