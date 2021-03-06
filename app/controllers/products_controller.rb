class ProductsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @products = Product.latest
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        @product.user = current_user
        if @product.save
            redirect_to products_path
        else
            render :new
        end
    end

    def edit
        @product = Product.find(params[:id])
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :image)
    end
end
