class Api::V1::ProductsController < ApplicationController
    skip_before_action :authorized

    def index
        @products = Product.all 
        render json: @products, status: :ok
    end

    def show
        @product = Product.find(params[:id])
        render json: @product, status: :ok
    end

    def create
        @product = Product.create(product_params)
        render json: @product, status: :created
    end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        render json: @product, status: :ok
    end

    def product_params
        params.require(:product).permit(:size, :price, :name, :style, :color_way, :release_date)
    end
end
