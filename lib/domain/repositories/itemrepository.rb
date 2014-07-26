class ItemRepository < ActiveRecord::Base
self.table_name = 'items'
attr_accessible :brand, :category, :description, :image_url, :price, :title, :discount
self.abstract_class = true
  def self.search(search_query)
    if search_query
      find(:all,:conditions => ['title LIKE ?', "%#{
      search_query}%"])
    else
      find(:all)
    end
  end
end