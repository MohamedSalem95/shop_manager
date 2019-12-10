class ItemsController < ApplicationController

    def create
        @order = Order.find(params[:order_id])
        @product = Product.find(params[:item][:product])
        @item = @order.add_item(@product, quantity: params[:item][:quantity])
        print params.inspect
        print params[:item][:quantity]
        if @item.save
            redirect_to @order
        else
            redirect_to @order
        end
    end


    private

    def order_params
        params.require(:item).permit(:product, :quantity)
    end

end
