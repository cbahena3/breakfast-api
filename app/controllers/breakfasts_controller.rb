class BreakfastsController < ApplicationController
  def index
    @breakfasts = Breakfast.all
    render :index
  end

  def create
    @breakfast = Breakfast.create(
      name: params[:name],
      description: params[:description],
      price: params[:price]
      )
    render :show
  end

  def show
    @breakfast = Breakfast.find_by(id: params[:id])
    render :show
  end
end
