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


    def create
        @image = Image.new(image_params)
        @image.img = url_for(@photo.image)
        if @photo.save
        render json: @photo
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
        params.require(:image).permit(:image, :url, :product_id, :img)
    end

end