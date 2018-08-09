class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @user = User.find(session[:current_user_id])
  end

  def create
     @user = User.find(session[:current_user_id])
     @profile = Profile.create(profile_params)
      @profile.save
       redirect_to user_path(@user)
     # else
     #   flash[:alert] = "Could not upload profile"
     #   render :new

   end

   private

   def profile_params
     # params.require(:profile).permit(:image, :summary, :user_id)
      # { image: params[:image], summary: params[:summary], user_id: params[:user_id] }
      { avatar: params[:avatar], summary: params[:summary], user_id: params[:user_id] }
   end

end
