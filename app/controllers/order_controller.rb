class OrderController < ApplicationController
    def new
        cart = Cart.find_or_create_by(user: current_user)
        @items = Item.where(cart: cart)

        @order_total = 0
        @items. each do |i|
            @order_total = @order_total + (i.product.price * i.quanity)
        end

        @order = Order.create!(user: current_user, total_price: @order_total, status: 'Pending')
        @items. each do |i|
            i.order = @order
        end
        # create new orded_item model and remove order from cart

        render 'orders/new'
    end

    def show
        cart = Cart.find_or_create_by(user: current_user)
        @items = Item.where(cart: cart)

        render 'orders/show'
    end
end