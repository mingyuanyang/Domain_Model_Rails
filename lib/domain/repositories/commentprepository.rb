class CommentpRepository < ActiveRecord::Base
  self.table_name = 'commentps'
  attr_accessible :body
  self.abstract_class = true
end