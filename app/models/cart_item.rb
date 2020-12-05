class CartItem < ApplicationRecord
  belongs_to :clothing
  belongs_to :cart
end
