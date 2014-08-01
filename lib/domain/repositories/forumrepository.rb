class ForumRepository < ActiveRecord::Base
  self.table_name = 'forums'
  attr_accessible :text, :title
  self.abstract_class = true
end