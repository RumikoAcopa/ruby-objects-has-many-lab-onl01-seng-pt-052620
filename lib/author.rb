class Author 
  attr_accessor :name, :posts, :title 
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    Post.all.select do |post|
        post.author = self
      end
  end
  
  def add_post(post)
      post.author == self
  end
  
  def dd_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
  end
  
  def Author.post_title
      Post.all.count
  end
end
  
