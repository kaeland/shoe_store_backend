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
        @image = Image.new(image_params)
        @image.url = url_for(@image.image)
        if @image.save
        render json: @image
        else
        render json: { status: "error", code: 402, message: "Login please" }
        end
    end

    def update
        @image = Image.find(params[:id])
        @image.update(image_params)
        render json: @image, status: :ok
    end

    private

    def image_params
        params.permit(:image, :url, :product_id)
    end

end