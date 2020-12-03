class Clothing < ApplicationRecord
  validates :gender, :brand, :category, :size, :price, presence: true
end
