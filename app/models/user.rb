class User < ApplicationRecord
  before_create :set_default_avatar

  has_many :posts
  has_many :reactions

  def set_default_avatar
    return if avatar.present?

    self.avatar = AvatarGenerator.new.call
  end

  def react_to(post, reaction_type)
    reactions.create(post: post, reaction_type: reaction_type)
  end
end
