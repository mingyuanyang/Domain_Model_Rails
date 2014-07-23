class ProfileRepository < ActiveRecord::Base
  attr_accessible :address, :firstname, :lastname, :mobile,:user_id
  self.abstract_class = true
end