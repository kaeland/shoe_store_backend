class Api::V1::InventoriesController < ApplicationController
    skip_before_action :authorized

    def index
        @inventories = Inventory.all 
        render json: @inventories, status: :ok
    end

    def show
        @inventory = Inventory.find(params[:id])
        render json: @inventory, status: :ok 
    end

    def create
        @inventory = Inventory.create(inventory_params)
        render json: @inventory, status: :ok
    end

    def update
        @inventory = Inventory.find(params[:id])
        @inventory.update(inventory_params)
        render json: @inventory, status: :ok 
    end

    private

    def inventory_params
        params.require(:inventory).permit(:name, :user_id)
    end
end
