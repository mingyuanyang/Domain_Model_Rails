class OrderitemRepository < ActiveRecord::Base
  attr_accessible :description, :item_id, :price, :quantity, :title
  self.abstract_class = true
end