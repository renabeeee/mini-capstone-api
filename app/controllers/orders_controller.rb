class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
      carted_products = current_user.carted_products.where(status: "carted")

      # updates math for many carted_products
      calculated_subtotal = 0
      carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total =  calculated_subtotal + calculated_tax

    #calculated_subtotal = product.price * params[:quantity].to_i


      @order = Order.create(
        user_id: current_user.id,
        # product_id: params[:product_id],
        # quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )
      @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render :show
  end


  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def index
      @orders = current_user.orders
      render template: "orders/index"
  end
end
