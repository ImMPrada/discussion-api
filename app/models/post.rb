class Post < ApplicationRecord
  validates :content, presence: true

  has_many :responses, class_name: "Post", foreign_key: "receiver_id"

  belongs_to :user
  belongs_to :receiver, class_name: "Post", optional: true
end