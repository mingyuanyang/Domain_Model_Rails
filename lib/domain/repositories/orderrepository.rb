class OrderRepository < ActiveRecord::Base
  attr_accessible :order_date, :receiver_address, :receiver_mobile, :receiver_name, :user_id
  self.abstract_class = true
end