class OrderController < ApplicationController
    def new
        cart = Cart.find_or_create_by(user: current_user)
        @items = Item.where(cart: cart)

        @order_total = 0
        @items. each do |i|
            @order_total = @order_total + (i.product.price * i.quantity)
        end

        @order = Order.create!(user: current_user, total_price: @order_total, status: 'Pending')
        @items. each do |i|
            OrderedItem.create!(quantity: i.quantity, product: i.product, order: @order, user: current_user)
            i.destroy
        end

        cart.destroy

        render 'orders/new'
    end

    def show
        @ordered_items = OrderedItem.where(user: current_user)

        render 'orders/show'
    end
end