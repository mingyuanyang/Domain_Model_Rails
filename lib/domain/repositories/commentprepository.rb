class CommentpRepository < ActiveRecord::Base
  attr_accessible :body
  self.abstract_class = true
end