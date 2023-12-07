class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product_id
  belongs_to :order, optional: true
end
