class Player < ApplicationRecord
   validates :first_name, presence: true
   validates :last_name, presence: true
   validates :age, presence: true, numericality: { only_integer: true }
   validates :nationality, presence: true
end
