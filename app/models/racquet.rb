class Racquet < ApplicationRecord
  validates :brand, :level, :weight, presence: true
  # scope :user_racquet, ->(user) {joins(:clothing).where(['user_id = ?',user.id])}
end
