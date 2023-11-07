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
    @products = Product.all
    render template: "products/index"
  end

  def any_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end
end
