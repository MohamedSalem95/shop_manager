class OrdersController < ApplicationController

    def index
        @orders = Order.latest
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
        @order = Order.new
    end


    def create
        @order = Order.new(order_params)
        @order.user = current_user
        if @order.save
            redirect_to @order
        else
            render :new
        end
    end


    private

    def order_params
        params.require(:order).permit(:name)
    end

end
