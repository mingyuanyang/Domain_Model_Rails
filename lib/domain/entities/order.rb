class Order < OrderRepository
  belongs_to :user
  has_many :orderitems, dependent: :destroy
  validates :receiver_name, :receiver_address, presence: true
  validates :receiver_mobile, format: { with: /08\d{8}/, message: "is not a valid mobile number" }
  validates :receiver_mobile, presence: true,
            length: { maximum: 10 }
end
