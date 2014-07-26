class Item < ItemRepository
  DISCOUNT = [ "10% off", "20% off", "30% off", "40% off", "half price", "full price" ]
  validates :title, :description, :image_url, :brand, :category, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with:    %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end

