class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @review = Review.create(review_params)
    redirect_to item_path(@review.item.id)
  end

  def destroy
    @review = Review.find(params[:id])
    redirect_to item_path(@review.item_id)
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :item_id, :comment, :rating)
  end
end
