class Post < ApplicationRecord
  validates :content, presence: true

  has_many :responses, class_name: "Post", foreign_key: "receiver_id", dependent: :destroy
  has_many :reactions, dependent: :destroy

  belongs_to :user, optional: true
  belongs_to :receiver, class_name: "Post", optional: true

  scope :main_posts, -> { where(receiver_id: nil) }

  def reactions_score
    reactions.likes.count - reactions.dislikes.count
  end

  def users_reacted_ids
    reactions.map {|reaction| reaction.user.id}
  end
end
