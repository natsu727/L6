class CartsController < ApplicationController
    def show
      @cart=CartItem.where(cart_id: current_cart.id)
        # @cart = current_cart
    end
end
