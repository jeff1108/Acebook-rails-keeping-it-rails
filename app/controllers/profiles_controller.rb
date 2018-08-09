class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
    @user = User.find(session[:current_user_id])
  end

  def create
     @user = User.find(session[:current_user_id])
     @profile = Profile.create(profile_params)
     if  @profile.save
       redirect_to user_path(@user)
       flash[:notice] = "Profile sucessfully updated"
     else
       flash[:alert] = "Could not upload profile"
       render :new
     end
   end

   # def edit
   #   @profile = Profile.find(params[:id])
   #   @user = User.find(session[:current_user_id])
   # end
   #
   # def update
   #  @profile = Profile.find(params[:id])
   #  @user = User.find(session[:current_user_id])
   #
   #  if @profile.update(profile_params)
   #    redirect_to user_path(@user)
   #    flash[:notice] = "Profile updated"
   #  else
   #    flash[:alert] = "Something wrong with your file"
   #    render :edit
   #  end
  end


   private

   def profile_params
     # params.require(:profile).permit(:avatar, :summary, :user_id)
      # { image: params[:image], summary: params[:summary], user_id: params[:user_id] }
      { avatar: params[:avatar], summary: params[:summary], user_id: params[:user_id] }
   end

end
