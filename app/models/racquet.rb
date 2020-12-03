class Racquet < ApplicationRecord
  validates :brand, :level, :weight, presence: true
end
