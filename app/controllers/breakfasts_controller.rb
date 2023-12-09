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

  def update
    @breakfast = Breakfast.find_by(id: params[:id])
    @breakfast.update(
      name: params[:name] || @breakfast.name,
      description: params[:description] || @breakfast.description,
      price: params[:price] || @breakfast.price
    )
    render :show
  end

  def destroy
    @breakfast = Breakfast.find_by(id: params[:id])
    @breakfast.destroy
    render json:{message: "Succesfully deleted."}
  end
end
