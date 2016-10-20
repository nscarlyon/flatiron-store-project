class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
    @review = Review.new
    @reviews = @item.reviews
  end
end
