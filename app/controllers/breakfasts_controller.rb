class BreakfastsController < ApplicationController
  def index
    @breakfasts = Breakfast.all
    render :index
  end
end
