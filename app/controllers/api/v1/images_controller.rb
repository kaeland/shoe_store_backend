class Api::V1::ImagesController < ApplicationController
    skip_before_action :authorized

    def index
        @images = Image.all 
        render json: @images, status: :ok 
    end

    def show
        @image = Image.find(params[:id])
        render json: @image, status: :ok
    end

    def create
        @image = Image.create(image_params)
        render json: @image, status: :created
    end

    def update
        @image = Image.find(params[:id])
        @image.update(image_params)
        render json: @image, status: :ok
    end

    private

    def image_params
        params.require(:image).permit(:url, :product_id)
    end
end