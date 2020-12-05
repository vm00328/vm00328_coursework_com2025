class Clothing < ApplicationRecord
  validates :gender, :brand, :category, :size, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
  belongs_to :user
  scope :user_clothings, ->(user) {where(['user_id=?',user.id])}
  has_many :cart_items, dependent: :destroy
end
