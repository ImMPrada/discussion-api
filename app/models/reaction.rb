class Reaction < ApplicationRecord
  validates :post_id, uniqueness: { scope: :user_id }
  validates :reaction_type, presence: true, inclusion: { in: %w(like dislike) }

  belongs_to :post
  belongs_to :user

  scope :likes, -> { where(reaction_type: :like) }
  scope :dislikes, -> { where(reaction_type: :dislike) }
end
