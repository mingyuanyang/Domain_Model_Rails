class ForumRepository < ActiveRecord::Base
  attr_accessible :text, :title
  self.abstract_class = true
end