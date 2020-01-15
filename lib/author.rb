class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
end