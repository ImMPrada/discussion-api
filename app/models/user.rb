class User < ApplicationRecord
  before_create :set_default_avatar

  has_many :posts

  def set_default_avatar
    return if avatar.present?

    self.avatar = AvatarGenerator.new.call
  end
end