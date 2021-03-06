require 'rails_helper'

describe "the add a place process" do
  it "adds a new place", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit places_path
    click_link 'Add place'
    fill_in 'Name', :with => 'Planet Granite'
    fill_in 'Street address', :with => '1405 NW 14th Ave'
    fill_in 'City', :with => 'Portland'
    fill_in 'State', :with => 'Oregon'
    click_button 'Create Place'
    expect(page).to have_content 'Places'
  end
end
