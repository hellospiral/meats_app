class ReviewsController < ApplicationController
  def new
    @meat = Meat.find(params[:meat_id])
    @review = @meat.reviews.new
  end

  def create
    @meat = Meat.find(params[:meat_id])
    @review = @meat.reviews.new(review_params)
    if @review.save
      redirect_to category_meat_path(@meat.category, @meat)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
