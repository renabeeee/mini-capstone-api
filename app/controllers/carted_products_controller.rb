class CartedProductsController < ApplicationController

  def create
        @carted_product = CartedProduct.new(
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        status: "carted",
      )
      if @carted_product.save
        render :show
      else
        render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
