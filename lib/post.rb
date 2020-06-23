class Post
  
  attr_accessor :authur, :title 
  
    @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end