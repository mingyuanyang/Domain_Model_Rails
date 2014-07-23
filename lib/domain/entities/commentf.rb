class Commentf < CommentfRepository
  belongs_to :forum
  belongs_to :user
  validates :body, presence: true,
            length: { minimum: 10 }
end
