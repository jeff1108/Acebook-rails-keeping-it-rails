require 'rails_helper'

RSpec.feature "Profile Picture", type: :feature do

  before(:each) do
    successful_sign_up
    click_button 'Log Out'
  end

  scenario "A has a profile picture" do
    # need to work out how to test for image uploads
    click_button 'View your profile'
    click_button 'Edit your profile'
    expect(page).to have_xpath("My image")
  end
  
end
