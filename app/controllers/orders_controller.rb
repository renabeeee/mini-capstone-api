class OrdersController < ApplicationController

  def create
  @order = Order.new(
    user_id: params[:user_id],
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: params[:subtotal],
    tax: params[:tax],
    total: params[:total],
  )
  @order.save
  render json: @order.as_json
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
