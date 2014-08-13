class CommentfRepository < ActiveRecord::Base
self.table_name = 'commentfs'
  attr_accessible :body, :user_id
  self.abstract_class = true
end
class Commentf < CommentfRepository
end
