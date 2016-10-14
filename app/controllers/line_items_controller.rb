class LineItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])

    if current_user.cart.nil?
      current_user.cart = Cart.create(user_id: current_user.id)
      current_user.save
    end

    current_user.cart.add_item(item.id)
    current_user.save
    redirect_to cart_path(current_cart)
  end

  def destroy
    item = Item.find(params[:item_id])
    current_user.cart.delete_item(item.id)
    current_user.save
    redirect_to cart_path(current_user.cart)
  end
end
