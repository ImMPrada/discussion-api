class User < ApplicationRecord
  before_create :set_default_avatar

  has_many :posts
  has_many :reactions

  def set_default_avatar
    return if avatar.present?

    self.avatar = AvatarGenerator.new.call
  end

  def react_to(post, reaction_type)
    reaction = reactions.find_or_initialize_by(post: post)
    reaction.reaction_type = reaction_type

    reaction.save
    reaction
  end
end
