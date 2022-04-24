class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
  before_create :set_default_avatar
  UNKNOWN_USER_AVATAR = 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg'
  UNKNOWN_USER_NICKNAME = 'JohnDoe'

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
