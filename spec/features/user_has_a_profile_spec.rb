require 'rails_helper'

RSpec.feature "User profile", type: :feature do

  before(:each) do
    successful_sign_up
  end

  # scenario "A user has a default profile picture" do
  #   click_link 'Create profile'
  #   expect(page).to have_css("img[src*='default_profile_pic.jpg']")
  # end

  scenario "A user can upload a profile" do
    click_link 'View your profile'
    click_link 'Edit profile'
    attach_file('Image', "spec/assets/images/cat.png")
    fill_in 'Summary', with: "This is a cat, meow!"
    click_button 'Update profile'
    expect(page).to have_css("img[src*='cat.png']")
    expect(page).to have_content("This is a cat, meow!")
    expect(page).to have_content("Profile sucessfully updated")
  end

end
