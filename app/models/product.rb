class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}

  belongs_to :supplier
  has_many :orders

  def images
    Image.where{product_id :id}
  end

  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end
end
