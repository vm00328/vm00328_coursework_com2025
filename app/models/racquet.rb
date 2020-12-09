class Racquet < ApplicationRecord
  has_many :cords, dependent: :destroy
  validates :brand, :level, presence: true
  validates :weight, numericality: {greater_than_or_equal_to: 0}, presence: true
  belongs_to :user
  #scope :user_racquet, ->(user) {joins(:clothing).where(['user_id = ?',user.id])}
  scope :user_racquets, ->(user) {where(['user_id=?',user.id])}
end
