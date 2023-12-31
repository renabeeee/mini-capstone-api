class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def first
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

  def index
    @products = Product.all

      if params[:category]
        category = Category.find_by(name: params[:category])
        @products = category.products
      end
    render :index
  end

  def create
    if current_user && current_user.admin
      @product = Product.new(
      supplier_id: params[:supplier_id],
      name: params["name"],
      price: params["price"],
      # image_url: params["image_url"],
      description: params["description"],

  )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: { message: "Please login." }, status: :unauthorized
  end
end

  def update
    @product = Product.find_by(id: params["id"])

    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      # image_url: params["image_url"] || @product.image_url,
      description: params["description"] || @product.description,
      supplier_id: params["supplier_id"] || @product.supplier_id

    )
    if @product.save #happy path
      render :show
    else #sad path
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy

    render json: {message: "product gone!"}
  end

  def show
    @product = Product.find_by(id: params[:id])
  render :show
  end
end
