class Cord < ApplicationRecord
  belongs_to :racquet
  validates :name, :colour, presence: true
end
