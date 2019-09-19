class Api::V1::CartItemsController < ApplicationController
    skip_before_action :authorized

    def index
        @cart_items = CartItem.all 
        render json: @cart_items, status: :ok 
    end

    def show
        @cart_item = CartItem.find(params[:id])
        render json: @cart_item, status: :ok
    end

    def create
        @cart_item = CartItem.create(cart_item_params)
        render json: @cart_item, status: :created
    end

    def update
        @cart_item = CartItem.find(params[:id])
        @cart_item.update(cart_item_params)
        render json: @cart_item, status: :ok
    end

    private

    def cart_item_params
        params.require(:cart_item).permit(:cart_id, :line_item_id)
    end
end