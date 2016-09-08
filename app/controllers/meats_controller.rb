class MeatsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @meat = @category.meats.new
  end

  def create
    @category = Category.find(params[:category_id])
    @meat = @category.meats.new(meat_params)
    if @meat.save
      redirect_to category_path(@meat.category)
    else
      render :new
    end
  end

  def show
    # @category = Category.find(params[:category_id])
    @meat = Meat.find(params[:id])
  end

  private
  def meat_params
    params.require(:meat).permit(:name, :description, :image)
  end
end
