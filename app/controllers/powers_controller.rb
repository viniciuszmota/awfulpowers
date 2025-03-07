class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.save
      redirect_to power_path(@power), notice: "Poder criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @power
  end

  def index
    @powers = Power.all
  end

  def edit
    
  end

  def update
    if @power.update(power_params)
      redirect_to power_path(@power), notice: "Poder atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @power.destroy
    redirect_to powers_path, notice: "Poder excluído com sucesso!"
    rescue ActiveRecord::RecordNotFound
    redirect_to powers_path, alert: "Poder não encontrado."
  end

  private

  def set_power
    @power = Power.find(params[:id])
  end
  def power_params
    params.require(:power).permit(:name, :description, :category, :element, :power_type, :power_level, :power_cost, :power_range, :power_duration, :power_effect)
  end
end
