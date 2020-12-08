class Cord < ApplicationRecord
  belongs_to :racquet
  belongs_to :user
  validates :name, :colour, presence: true
  scope :user_cords, ->(user) {where(['user_id=?',user.id])}
end
