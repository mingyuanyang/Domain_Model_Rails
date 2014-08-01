class OrderRepository < ActiveRecord::Base
  self.table_name = 'orders'
  attr_accessible :order_date, :receiver_address, :receiver_mobile, :receiver_name, :user_id
  self.abstract_class = true
end