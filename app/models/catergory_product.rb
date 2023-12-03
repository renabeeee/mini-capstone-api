class CatergoryProduct < ApplicationRecord
  belongs_to :product
  belongs_to :category_products
end
