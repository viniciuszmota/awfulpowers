class OrderController < ApplicationController
  before_action :set_power, only: [:show]
  before_action :set_order, only: [:show]

  def show
    if order.user == current_user
      render :show
    else
      redirect_to root_path, alert: "Nao autorizado"
    end

    private

    def set_order
      @order = Order.find(params[:id])
    end

    def set_power
      @power = Power.find(params[:id])
    end
end
