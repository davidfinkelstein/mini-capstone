class Api::OrdersController < ApplicationController
  
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end


  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )

    subtotal = order.product.price * order.quantity,
    tax = order.product.price * 0.09,
    total = (order.product.price + order.product.price * 0.08)

    order.subtotal = subtotal  # Attribute Writer
    order.tax = tax
    order.total = total   
 

    if order.save
      render 'show.json.jbuilder'
      # render json: {message: 'Order created successfully'}, status: :created
    else
      render json: {errors: order.errors.full_messages}, status: :bad_request
    end
  end
end
