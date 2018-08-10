require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :summary => "Summary",
        :image => "Image"
      ),
      Profile.create!(
        :summary => "Summary",
        :image => "Image"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
