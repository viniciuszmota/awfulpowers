class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index 
    @orders = current_user.orders
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
      redirect_to orders_path, notice: "Pedido criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end 
  end

private 

  
  def order_params
    params.require(:order).permit(:power_id)
    # @power = Power.find(params[:power_id])
  end

end
