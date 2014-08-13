class OrderitemRepository < ActiveRecord::Base
  self.table_name = 'orderitems'
  attr_accessible :description, :item_id, :price, :quantity, :title
  self.abstract_class = true
end
class Orderitem < OrderitemRepository
end