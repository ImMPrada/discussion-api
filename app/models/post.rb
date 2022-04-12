class Post < ApplicationRecord
  validates :content, presence: true

  has_many :responses, class_name: "Post", foreign_key: "receiver_id"
  has_many :reactions

  belongs_to :user
  belongs_to :receiver, class_name: "Post", optional: true

  scope :main_posts, -> { where(receiver_id: nil) }

  def reactions_score
    reactions.likes.count - reactions.dislikes.count
  end
end
