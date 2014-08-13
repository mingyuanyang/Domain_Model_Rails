class PostRepository < ActiveRecord::Base
  self.table_name = 'posts'
  attr_accessible :text, :title
  self.abstract_class = true
end
class Post < PostRepository
end