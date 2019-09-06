class Api::V1::CartsController < ApplicationController
    skip_before_action :authorized

    def index
        @carts = Cart.all 
        render json: @carts, status: :ok
    end

    def show
        @cart = Cart.find(params[:id])
        render json: @cart, status: :ok 
    end

    def create
        @cart = Cart.create(cart_params)
        render json: @cart, status: :ok
    end

    def update
        @cart = Cart.find(params[:id])
        @cart.update(cart_params)
        render json: @cart, status: :ok 
    end

    private

    def cart_params
        params.require(:cart).permit(:name, :total, :user_id)
    end
end
