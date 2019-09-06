class Api::V1::LineItemsController < ApplicationController
    skip_before_action :authorized

    def index
        @line_items = LineItem.all 
        render json: @line_items, status: :ok
    end

    def show
        @line_item = LineItem.find(params[:id])
        render json: @line_item, status: :ok
    end

    def create
        @line_item = LineItem.create(line_item_params)
        render json: @line_item, status: :created
    end

    def update
        @line_item = LineItem.find(params[:id])
        @line_item.update(line_item_params)
        render json: @line_item, status: :ok
    end

    def line_item_params
        params.require(:line_item).permit(:size, :price, :name, :style, :color_way, :release_date)
    end
end
