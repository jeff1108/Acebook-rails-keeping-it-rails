require 'rails_helper'

RSpec.feature "User profile", type: :feature do

  before(:each) do
    successful_sign_up
  end

  # scenario "A user has a default profile picture" do
  #   # need to work out how to test for image uploads
  #   click_link 'View your profile'
  #   expect(page).to have_css("img[src*='default_profile_pic.jpg']")
  # end

  scenario "A user can upload a profile" do
    # need to work out how to test for image uploads
    click_link 'View your profile'
    click_link 'Edit profile'
    attach_file('Image', "spec/assets/images/cat.png")
    fill_in 'Summary', with: "This is a cat, meow!"
    click_button 'Update Bio'
    expect(page).to have_css("img[src*='cat.png']")
    expect(page).to have_content("This is a cat, meow!")
    expect(page).to have_content("Bio sucessfully updated")
  end

end
