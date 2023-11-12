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

  def create

  @product = Product.create(

  name: params["name"],
  price: params["price"],
  image_url: params["image_url"],
  description: params["description"]
  )
  render :show

  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      image_url: params["image_url"] || @product.image_url,
      description: params["description"] || @product.description
    )
    render :show
  end
end
