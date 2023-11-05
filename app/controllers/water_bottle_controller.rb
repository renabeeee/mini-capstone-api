class WaterBottleController < ApplicationController
  def water_bottle_info
    product = Product.first
    render json: product.as_json
  end
end
