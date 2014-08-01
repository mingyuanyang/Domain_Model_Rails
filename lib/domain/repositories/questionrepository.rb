class QuestionRepository < ActiveRecord::Base
  self.table_name = 'questions'
  attr_accessible :mobile, :name, :your_question
  self.abstract_class = true  
end