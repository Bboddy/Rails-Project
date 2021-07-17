class OrderController < ApplicationController
    def new
        cart = Cart.find_or_create_by(user: current_user)
        @items = Item.where(cart: cart)
        @order_total = 0
        @items. each do |i|
            @order_total = @order_total + (i.product.price * i.quanity)
        end
        render 'orders/new'
    end

    def show
        cart = Cart.find_or_create_by(user: current_user)
        @items = Item.where(cart: cart)
        @order_total = 0
        @items. each do |i|
            @order_total = @order_total + (i.product.price * i.quanity)
        end
        render 'orders/show'
    end
end