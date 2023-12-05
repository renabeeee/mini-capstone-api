class CategoryProductsController < ApplicationController

  def destroy
    category_product = CategoryProduct.find_by(id: params["id"])
    category_product.destroy

    render json: {message: "be gone dupe!"}
  end

  def show
    category_product = CategoryProduct.all
    render json: category_product.as_json
  end
end
