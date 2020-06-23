class Post
  
  attr_accessor :name 
  
    @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
end