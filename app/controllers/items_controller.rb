class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
    @review = Review.new
    @reviews = @item.reviews

    respond_to do |f|
      f.html {render :show}
      f.json {render json: @item}
    end
  end
end
