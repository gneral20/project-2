class ImagesController < ApplicationController

    before_action :authenticate_user!

    def index
        @user = current_user
        @images = Image.all
    end

    def show
        @image = Image.find(params[:id])
    end

    def new
        @user = current_user
        @image = @user.images.new
        @image.avatar.attach(params[:avatar])
    end

    def create
        @user = current_user
        @user.images.create(image_params)
        redirect_to images_path
    end

    def edit
        @image = Image.find(params[:id])

    end

    def update
        @user = current_user
        @user.images.update(image_params)
        redirect_to images_path
    end

    def destroy
        @user = current_user
        @image = @user.images.find(params[:id])
        @image.destroy
        redirect_to new_user_session_path
    end

    private
    def image_params
        params.require(:image).permit(:title,:comment,:img)
    end
end
