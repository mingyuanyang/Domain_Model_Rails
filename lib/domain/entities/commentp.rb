class Commentp < CommentpRepository
  belongs_to :post
  validates :body, presence: true,
  length: { minimum: 10 }
end