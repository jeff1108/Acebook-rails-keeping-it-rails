require 'rails_helper'

RSpec.describe ProfilesController, type: :controller do

  describe "POST /users/:id/profiles" do

      before(:each) do
        @user = User.create(first_name: "test_first_name", last_name: "test_last_name", email: "test_email@keepingitrails.com", password: "pa55w0rd")
        post :create, params: { user_id: @user.id, summary: "I am a cat"}
      end

      it "redirects to user profile page" do
        expect(response).to redirect_to users_path
      end

    end


end
