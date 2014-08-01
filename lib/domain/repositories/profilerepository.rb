class ProfileRepository < ActiveRecord::Base
  self.table_name = 'profiles'
  attr_accessible :address, :firstname, :lastname, :mobile,:user_id
  self.abstract_class = true
end