class LineItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    current_cart = Cart.find_by(user_id: params[current_user.id])

    if current_cart.nil?
      current_cart = Cart.create(user_id: current_user.id)
      current_user.cart = current_cart
      current_user.save
    end

    current_cart.add_item(item.id)
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
