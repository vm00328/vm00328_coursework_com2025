class Clothing < ApplicationRecord
  validates :gender, :brand, :category, :size, :price, presence: true
  belongs_to :user
  scope :user_clothings, ->(user) {where(['user_id=?',user.id])}
end
