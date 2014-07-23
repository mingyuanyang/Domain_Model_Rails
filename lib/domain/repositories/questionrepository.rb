class QuestionRepository < ActiveRecord::Base
  attr_accessible :mobile, :name, :your_question
  self.abstract_class = true  
end