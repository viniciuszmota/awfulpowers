class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def show
    if @order.user == current_user
      render :show
    else
      redirect_to root_path, alert: "Nao autorizado"
    end
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end
end
