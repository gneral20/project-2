class ProfilesController < ApplicationController
    def index
        @profile = current_user.profile
        @images = current_user.images
    end

    def show
        @profile = current_user.profile
        @images = current_user.images
    end

    def show_profile
        @profile = Profile.find(params[:id])
    end

    def edit
        @profile = current_user.profile
        @images = current_user.images
    end

    def update
        @profile = current_user.profile
        @profile.update(profile_params)
        redirect_to profile_path(1)
    end

    private
    def profile_params
        params.require(:profile).permit(:first_name,:last_name,:profile_image,:pio)
    end
end
