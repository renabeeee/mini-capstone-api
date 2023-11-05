class ProductsController < ApplicationController
  def water_bottle_info
    product = Product.first
    render json: product.as_json
  end

  def hoodie_info
    product = Product.second
    render json: product.as_json
  end

  def socks_info
    product = Product.third
    render json: product.as_json
  end

  def all_products
    product = Product.all
    render json: product.as_json
  end
end
