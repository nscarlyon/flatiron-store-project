class LineItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    
    if current_user.current_cart_id.nil?
      cart = Cart.create(user_id: current_user.id)
      current_user.current_cart_id = cart.id
      current_user.save
    end

    current_user.current_cart = Cart.find(current_user.current_cart_id)
    current_user.current_cart.add_item(item.id)
    current_user.save
    redirect_to cart_path(current_user.current_cart_id)
  end
end
