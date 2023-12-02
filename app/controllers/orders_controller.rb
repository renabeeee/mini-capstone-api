class OrdersController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = products * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total =  calculated_subtotal + calculated_tax


  @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: subtotal,
    tax: tax,
    total: total,
  )
  @order.save
  render :show
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = Order.all
    render template: "orders/index"
  end
end
