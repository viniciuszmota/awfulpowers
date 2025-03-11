class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :destroy]
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

  def show
    @power = @order.power
    if @order.user == current_user
      render :show
    else
      redirect_to root_path, alert: "Nao autorizado"
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path, notice: "Pedido excluido com sucesso!"
  end

private

  def order_params
    params.require(:order).permit(:power_id)
    # @power = Power.find(params[:power_id])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
