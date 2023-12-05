class Product < ApplicationRecord
  has_many :orders
  belongs_to :supplier
  has_many :orders

  has_many :category_products
  has_many :categories, through: :category_products

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}


  def supplier
    Supplier.find_by(id: supplier_id)
  end

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
