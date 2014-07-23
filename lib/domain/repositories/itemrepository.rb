class ItemRepository < ActiveRecord::Base
attr_accessible :brand, :category, :description, :image_url, :price, :title, :discount
self.abstract_class = true
end