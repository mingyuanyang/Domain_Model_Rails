class CommentfRepository < ActiveRecord::Base
  attr_accessible :body, :user_id
  self.abstract_class = true
end
