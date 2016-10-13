class CartsController < ApplicationController
  def show
    @current_cart = Cart.find_by(user_id: current_user.id)
  end

  def checkout
    @current_cart = current_user.current_cart
    @current_cart.new_inventory

    @current_cart.destroy
    current_user.current_cart_id = nil
    redirect_to cart_path(@current_cart)
  end
end
